#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>

#include "raylib.h"

static Color unpack_rgba(uint32_t clr) {
    Color color;
    color.r = clr >> 0 & 255;
    color.g = clr >> 8 & 255;
    color.b = clr >> 16 & 255;
    color.a = clr >> 24 & 255;
    return color;
}

void hs_clear_background(uint32_t clr) {
    ClearBackground(unpack_rgba(clr));
}

Image *hs_gen_image_color(int width, int height, uint32_t clr) {
    Image img = GenImageColor(width, height, unpack_rgba(clr));
    Image *storage = malloc(sizeof *storage);
    *storage = img;
    return storage;
}

Texture2D *hs_load_texture_from_image(Image *p) {
    Texture2D tex = LoadTextureFromImage(*p);
    Texture2D *storage = malloc(sizeof *storage);
    *storage = tex;
    return storage;
}

Texture2D *hs_load_texture(char *path) {
    Texture2D tex = LoadTexture(path);
    Texture2D *storage = malloc(sizeof *storage);
    *storage = tex;
    return storage;
}

Image *hs_load_image(char *path) {
    Image img = LoadImage(path);
    Image *storage = malloc(sizeof *storage);
    *storage = img;
    return storage;
}

void hs_unload_image(Image *p) {
    UnloadImage(*p);
    free(p);
}

void hs_unload_texture(Texture2D *p) {
    UnloadTexture(*p);
    free(p);
}

void hs_update_texture(Texture2D *tex, Image *img) {
    UpdateTexture(*tex, img->data);
}

uint32_t *hs_image_data(Image *p) {
    return p->data;
}

int hs_image_width(Image *p) {
    return p->width;
}

int hs_image_height(Image *p) {
    return p->height;
}

void hs_draw_rectangle(int x, int y, int w, int h, uint32_t clr) {
    DrawRectangle(x, y, w, h, unpack_rgba(clr));
};

void hs_draw_texture(Texture2D *p, int x, int y, uint32_t clr) {
    DrawTexture(*p, x, y, unpack_rgba(clr));
};

void hs_draw_text(char *text, int x, int y, int size, uint32_t clr) {
    DrawText(text, x, y, size, unpack_rgba(clr));
}

void hs_draw_texture_pro(
    Texture2D *tex,
    float sx, float sy, float sw, float sh,
    float dx, float dy, float dw, float dh,
    float ox, float oy, float rotation, uint32_t clr) {
    Rectangle source = {sx, sy, sw, sh};
    Rectangle dest = {dx, dy, dw, dh};
    Vector2 origin = {ox, oy};
    DrawTexturePro(*tex, source, dest, origin, rotation, unpack_rgba(clr));
}

void hs_get_mouse_delta(float *xp, float *yp) {
    Vector2 v = GetMouseDelta();
    *xp = v.x;
    *yp = v.y;
}


void *hs_load_sound_from_wave(unsigned numframes, unsigned rate, unsigned samplesize, unsigned numchannels, void *data, size_t datalen) {

    if (datalen != numframes * samplesize/8 * numchannels) {
        fprintf(stderr, "hs_load_sound_from_wave: data length doesn't match other fields\n");
        return NULL;
    }

    Wave wave = {numframes, rate, samplesize, numchannels, data};
    Sound sound = LoadSoundFromWave(wave);
    if (!IsSoundValid(sound)) {
        fprintf(stderr, "hs_load_sound_from_wave: LoadSoundFromWave failed\n");
        return NULL;
    }

    Sound *storage = malloc(sizeof *storage);
    if (storage == NULL) {
        fprintf(stderr, "hs_load_sound_from_wave: malloc failed\n");
        return NULL;
    }

    *storage = sound;
    return storage;
}

void hs_unload_sound(void *p) {
    Sound *sound = p;
    UnloadSound(*sound);
}

void hs_play_sound(void *p) {
    Sound *sound = p;
    PlaySound(*sound);
}
