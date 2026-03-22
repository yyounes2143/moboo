.class public final Lcom/google/android/gms/internal/ads/zzcr;
.super Lcom/google/android/gms/internal/ads/zzco;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzco;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zze(Ljava/nio/ByteBuffer;)V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    sub-int v4, v3, v2

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzco;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 14
    .line 15
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 16
    .line 17
    const/high16 v6, 0x60000000

    .line 18
    .line 19
    const/high16 v7, 0x50000000

    .line 20
    .line 21
    const/high16 v8, 0x10000000

    .line 22
    .line 23
    const/16 v9, 0x16

    .line 24
    .line 25
    const/16 v10, 0x15

    .line 26
    .line 27
    if-eq v5, v1, :cond_2

    .line 28
    .line 29
    if-eq v5, v0, :cond_3

    .line 30
    .line 31
    if-eq v5, v10, :cond_1

    .line 32
    .line 33
    if-eq v5, v9, :cond_3

    .line 34
    .line 35
    if-eq v5, v8, :cond_4

    .line 36
    .line 37
    if-eq v5, v7, :cond_1

    .line 38
    .line 39
    if-ne v5, v6, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_1
    div-int/2addr v4, v1

    .line 49
    :cond_2
    add-int/2addr v4, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    div-int/lit8 v4, v4, 0x2

    .line 52
    .line 53
    :cond_4
    :goto_1
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzco;->zzj(I)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzco;->zzb:Lcom/google/android/gms/internal/ads/zzcl;

    .line 58
    .line 59
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 60
    .line 61
    if-eq v5, v1, :cond_b

    .line 62
    .line 63
    if-eq v5, v0, :cond_a

    .line 64
    .line 65
    if-eq v5, v10, :cond_9

    .line 66
    .line 67
    if-eq v5, v9, :cond_8

    .line 68
    .line 69
    if-eq v5, v8, :cond_7

    .line 70
    .line 71
    if-eq v5, v7, :cond_6

    .line 72
    .line 73
    if-ne v5, v6, :cond_5

    .line 74
    .line 75
    :goto_2
    if-ge v2, v3, :cond_c

    .line 76
    .line 77
    add-int/lit8 v1, v2, 0x1

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    .line 92
    .line 93
    add-int/2addr v2, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_6
    :goto_3
    if-ge v2, v3, :cond_c

    .line 102
    .line 103
    add-int/lit8 v0, v2, 0x1

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    add-int/2addr v2, v1

    .line 120
    goto :goto_3

    .line 121
    :cond_7
    :goto_4
    if-ge v2, v3, :cond_c

    .line 122
    .line 123
    add-int/lit8 v0, v2, 0x1

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 137
    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x2

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    :goto_5
    if-ge v2, v3, :cond_c

    .line 143
    .line 144
    add-int/lit8 v5, v2, 0x2

    .line 145
    .line 146
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v5, v2, 0x3

    .line 154
    .line 155
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 160
    .line 161
    .line 162
    add-int/2addr v2, v0

    .line 163
    goto :goto_5

    .line 164
    :cond_9
    :goto_6
    if-ge v2, v3, :cond_c

    .line 165
    .line 166
    add-int/lit8 v0, v2, 0x1

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    add-int/lit8 v0, v2, 0x2

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    .line 183
    .line 184
    add-int/2addr v2, v1

    .line 185
    goto :goto_6

    .line 186
    :cond_a
    :goto_7
    if-ge v2, v3, :cond_c

    .line 187
    .line 188
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    sget-object v5, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 193
    .line 194
    const/high16 v5, 0x3f800000    # 1.0f

    .line 195
    .line 196
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    const/high16 v5, -0x40800000    # -1.0f

    .line 201
    .line 202
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    const v5, 0x46fffe00    # 32767.0f

    .line 207
    .line 208
    .line 209
    mul-float/2addr v1, v5

    .line 210
    float-to-int v1, v1

    .line 211
    int-to-short v1, v1

    .line 212
    and-int/lit16 v5, v1, 0xff

    .line 213
    .line 214
    int-to-byte v5, v5

    .line 215
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    .line 217
    .line 218
    shr-int/lit8 v1, v1, 0x8

    .line 219
    .line 220
    and-int/lit16 v1, v1, 0xff

    .line 221
    .line 222
    int-to-byte v1, v1

    .line 223
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 224
    .line 225
    .line 226
    add-int/2addr v2, v0

    .line 227
    goto :goto_7

    .line 228
    :cond_b
    :goto_8
    if-ge v2, v3, :cond_c

    .line 229
    .line 230
    const/4 v0, 0x0

    .line 231
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    and-int/lit16 v0, v0, 0xff

    .line 239
    .line 240
    add-int/lit8 v0, v0, -0x80

    .line 241
    .line 242
    int-to-byte v0, v0

    .line 243
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 244
    .line 245
    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_c
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcm;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/high16 v1, 0x10000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x15

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/high16 v1, 0x50000000

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x16

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const/high16 v1, 0x60000000

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcm;

    .line 34
    .line 35
    const-string v1, "Unhandled input format:"

    .line 36
    .line 37
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcl;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcl;->zza:Lcom/google/android/gms/internal/ads/zzcl;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    .line 45
    .line 46
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzb:I

    .line 47
    .line 48
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcl;->zzc:I

    .line 49
    .line 50
    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(III)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method
