.class final Lcom/google/android/gms/internal/ads/zzagb;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;

.field private zzb:Lcom/google/android/gms/internal/ads/zzadq;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzahe;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzado;

.field private zzi:Lcom/google/android/gms/internal/ads/zzage;

.field private zzj:Lcom/google/android/gms/internal/ads/zzajb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzf:J

    .line 15
    .line 16
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzado;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzadd;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzm([BIIZ)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private final zzg()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:Lcom/google/android/gms/internal/ads/zzadq;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:Lcom/google/android/gms/internal/ads/zzadq;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzael;

    .line 12
    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzael;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 11
    .line 12
    const/4 v7, 0x4

    .line 13
    const-wide/16 v8, -0x1

    .line 14
    .line 15
    const/4 v10, 0x2

    .line 16
    if-eqz v6, :cond_18

    .line 17
    .line 18
    if-eq v6, v5, :cond_17

    .line 19
    .line 20
    if-eq v6, v10, :cond_a

    .line 21
    .line 22
    const/4 v8, 0x5

    .line 23
    if-eq v6, v7, :cond_5

    .line 24
    .line 25
    if-eq v6, v8, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-ne v6, v1, :cond_0

    .line 29
    .line 30
    return v3

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzi:Lcom/google/android/gms/internal/ads/zzage;

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzh:Lcom/google/android/gms/internal/ads/zzado;

    .line 42
    .line 43
    if-eq v1, v3, :cond_3

    .line 44
    .line 45
    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzh:Lcom/google/android/gms/internal/ads/zzado;

    .line 46
    .line 47
    new-instance v3, Lcom/google/android/gms/internal/ads/zzage;

    .line 48
    .line 49
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzf:J

    .line 50
    .line 51
    invoke-direct {v3, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzage;-><init>(Lcom/google/android/gms/internal/ads/zzado;J)V

    .line 52
    .line 53
    .line 54
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzi:Lcom/google/android/gms/internal/ads/zzage;

    .line 55
    .line 56
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzj:Lcom/google/android/gms/internal/ads/zzajb;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzi:Lcom/google/android/gms/internal/ads/zzage;

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v1, v5, :cond_4

    .line 68
    .line 69
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaej;->zza:J

    .line 70
    .line 71
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzf:J

    .line 72
    .line 73
    add-long/2addr v3, v5

    .line 74
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaej;->zza:J

    .line 75
    .line 76
    :cond_4
    return v1

    .line 77
    :cond_5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 78
    .line 79
    .line 80
    move-result-wide v9

    .line 81
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzf:J

    .line 82
    .line 83
    cmp-long v3, v9, v11

    .line 84
    .line 85
    if-nez v3, :cond_9

    .line 86
    .line 87
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v1, v2, v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzado;->zzm([BIIZ)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_6

    .line 98
    .line 99
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagb;->zzg()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 104
    .line 105
    .line 106
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzj:Lcom/google/android/gms/internal/ads/zzajb;

    .line 107
    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajb;

    .line 111
    .line 112
    sget-object v3, Lcom/google/android/gms/internal/ads/zzakj;->zza:Lcom/google/android/gms/internal/ads/zzakj;

    .line 113
    .line 114
    const/16 v6, 0x8

    .line 115
    .line 116
    invoke-direct {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(Lcom/google/android/gms/internal/ads/zzakj;I)V

    .line 117
    .line 118
    .line 119
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzj:Lcom/google/android/gms/internal/ads/zzajb;

    .line 120
    .line 121
    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzage;

    .line 122
    .line 123
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzf:J

    .line 124
    .line 125
    invoke-direct {v2, v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzage;-><init>(Lcom/google/android/gms/internal/ads/zzado;J)V

    .line 126
    .line 127
    .line 128
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzi:Lcom/google/android/gms/internal/ads/zzage;

    .line 129
    .line 130
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzj:Lcom/google/android/gms/internal/ads/zzajb;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzajb;->zzi(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzj:Lcom/google/android/gms/internal/ads/zzajb;

    .line 139
    .line 140
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagg;

    .line 141
    .line 142
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzf:J

    .line 143
    .line 144
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:Lcom/google/android/gms/internal/ads/zzadq;

    .line 145
    .line 146
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-direct {v2, v9, v10, v3}, Lcom/google/android/gms/internal/ads/zzagg;-><init>(JLcom/google/android/gms/internal/ads/zzadq;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzajb;->zze(Lcom/google/android/gms/internal/ads/zzadq;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzg:Lcom/google/android/gms/internal/ads/zzahe;

    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:Lcom/google/android/gms/internal/ads/zzadq;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    const/16 v3, 0x400

    .line 166
    .line 167
    invoke-interface {v2, v3, v7}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-instance v3, Lcom/google/android/gms/internal/ads/zzx;

    .line 172
    .line 173
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v6, "image/jpeg"

    .line 177
    .line 178
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 179
    .line 180
    .line 181
    new-instance v6, Lcom/google/android/gms/internal/ads/zzav;

    .line 182
    .line 183
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzau;

    .line 189
    .line 190
    aput-object v1, v5, v4

    .line 191
    .line 192
    invoke-direct {v6, v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 203
    .line 204
    .line 205
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagb;->zzg()V

    .line 209
    .line 210
    .line 211
    :goto_0
    return v4

    .line 212
    :cond_9
    iput-wide v11, v2, Lcom/google/android/gms/internal/ads/zzaej;->zza:J

    .line 213
    .line 214
    return v5

    .line 215
    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:I

    .line 216
    .line 217
    const v5, 0xffe1

    .line 218
    .line 219
    .line 220
    if-ne v2, v5, :cond_15

    .line 221
    .line 222
    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    .line 223
    .line 224
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzagb;->zze:I

    .line 225
    .line 226
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzagb;->zze:I

    .line 234
    .line 235
    invoke-interface {v1, v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 236
    .line 237
    .line 238
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzg:Lcom/google/android/gms/internal/ads/zzahe;

    .line 239
    .line 240
    if-nez v5, :cond_16

    .line 241
    .line 242
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    const-string v6, "http://ns.adobe.com/xap/1.0/"

    .line 247
    .line 248
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_16

    .line 253
    .line 254
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_16

    .line 259
    .line 260
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 261
    .line 262
    .line 263
    move-result-wide v5

    .line 264
    cmp-long v1, v5, v8

    .line 265
    .line 266
    if-nez v1, :cond_c

    .line 267
    .line 268
    :cond_b
    :goto_1
    const/4 v7, 0x0

    .line 269
    goto/16 :goto_6

    .line 270
    .line 271
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzagh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzagd;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    if-nez v1, :cond_d

    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagd;->zzb:Ljava/util/List;

    .line 279
    .line 280
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 281
    .line 282
    .line 283
    move-result v11

    .line 284
    if-ge v11, v10, :cond_e

    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    add-int/2addr v10, v3

    .line 292
    move v11, v4

    .line 293
    move-wide v12, v8

    .line 294
    move-wide v14, v12

    .line 295
    move-wide/from16 v18, v14

    .line 296
    .line 297
    move-wide/from16 v20, v18

    .line 298
    .line 299
    :goto_2
    if-ltz v10, :cond_13

    .line 300
    .line 301
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v16

    .line 305
    move/from16 v17, v3

    .line 306
    .line 307
    move-object/from16 v3, v16

    .line 308
    .line 309
    check-cast v3, Lcom/google/android/gms/internal/ads/zzagc;

    .line 310
    .line 311
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzagc;->zza:Ljava/lang/String;

    .line 312
    .line 313
    move-wide/from16 v22, v8

    .line 314
    .line 315
    const-string v8, "video/mp4"

    .line 316
    .line 317
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v7

    .line 321
    or-int/2addr v7, v11

    .line 322
    if-nez v10, :cond_f

    .line 323
    .line 324
    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzagc;->zzc:J

    .line 325
    .line 326
    sub-long/2addr v5, v8

    .line 327
    const-wide/16 v8, 0x0

    .line 328
    .line 329
    :goto_3
    move-wide/from16 v24, v8

    .line 330
    .line 331
    move-wide v8, v5

    .line 332
    move-wide/from16 v5, v24

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_f
    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzagc;->zzb:J

    .line 336
    .line 337
    sub-long v8, v5, v8

    .line 338
    .line 339
    goto :goto_3

    .line 340
    :goto_4
    if-eqz v7, :cond_10

    .line 341
    .line 342
    cmp-long v3, v5, v8

    .line 343
    .line 344
    if-eqz v3, :cond_10

    .line 345
    .line 346
    sub-long v20, v8, v5

    .line 347
    .line 348
    move v11, v4

    .line 349
    move-wide/from16 v18, v5

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_10
    move v11, v7

    .line 353
    :goto_5
    if-nez v10, :cond_11

    .line 354
    .line 355
    move-wide v14, v8

    .line 356
    :cond_11
    if-nez v10, :cond_12

    .line 357
    .line 358
    move-wide v12, v5

    .line 359
    :cond_12
    add-int/lit8 v10, v10, -0x1

    .line 360
    .line 361
    move/from16 v3, v17

    .line 362
    .line 363
    move-wide/from16 v8, v22

    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_13
    move-wide/from16 v22, v8

    .line 367
    .line 368
    cmp-long v2, v18, v22

    .line 369
    .line 370
    if-eqz v2, :cond_b

    .line 371
    .line 372
    cmp-long v2, v20, v22

    .line 373
    .line 374
    if-eqz v2, :cond_b

    .line 375
    .line 376
    cmp-long v2, v12, v22

    .line 377
    .line 378
    if-eqz v2, :cond_b

    .line 379
    .line 380
    cmp-long v2, v14, v22

    .line 381
    .line 382
    if-nez v2, :cond_14

    .line 383
    .line 384
    goto :goto_1

    .line 385
    :cond_14
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzagd;->zza:J

    .line 386
    .line 387
    new-instance v11, Lcom/google/android/gms/internal/ads/zzahe;

    .line 388
    .line 389
    move-wide/from16 v16, v1

    .line 390
    .line 391
    invoke-direct/range {v11 .. v21}, Lcom/google/android/gms/internal/ads/zzahe;-><init>(JJJJJ)V

    .line 392
    .line 393
    .line 394
    move-object v7, v11

    .line 395
    :goto_6
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzg:Lcom/google/android/gms/internal/ads/zzahe;

    .line 396
    .line 397
    if-eqz v7, :cond_16

    .line 398
    .line 399
    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzahe;->zzd:J

    .line 400
    .line 401
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzf:J

    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_15
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zze:I

    .line 405
    .line 406
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 407
    .line 408
    .line 409
    :cond_16
    :goto_7
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 410
    .line 411
    return v4

    .line 412
    :cond_17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 413
    .line 414
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    invoke-interface {v1, v3, v4, v10}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    add-int/lit8 v1, v1, -0x2

    .line 429
    .line 430
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zze:I

    .line 431
    .line 432
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 433
    .line 434
    return v4

    .line 435
    :cond_18
    move-wide/from16 v22, v8

    .line 436
    .line 437
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 438
    .line 439
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    invoke-interface {v1, v3, v4, v10}, Lcom/google/android/gms/internal/ads/zzado;->zzi([BII)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:I

    .line 454
    .line 455
    const v2, 0xffda

    .line 456
    .line 457
    .line 458
    if-ne v1, v2, :cond_1a

    .line 459
    .line 460
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzf:J

    .line 461
    .line 462
    cmp-long v1, v1, v22

    .line 463
    .line 464
    if-eqz v1, :cond_19

    .line 465
    .line 466
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 467
    .line 468
    goto :goto_8

    .line 469
    :cond_19
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagb;->zzg()V

    .line 470
    .line 471
    .line 472
    goto :goto_8

    .line 473
    :cond_1a
    const v2, 0xffd0

    .line 474
    .line 475
    .line 476
    if-lt v1, v2, :cond_1b

    .line 477
    .line 478
    const v2, 0xffd9

    .line 479
    .line 480
    .line 481
    if-le v1, v2, :cond_1c

    .line 482
    .line 483
    :cond_1b
    const v2, 0xff01

    .line 484
    .line 485
    .line 486
    if-eq v1, v2, :cond_1c

    .line 487
    .line 488
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 489
    .line 490
    :cond_1c
    :goto_8
    return v4
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadn;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzb:Lcom/google/android/gms/internal/ads/zzadq;

    .line 2
    .line 3
    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzj:Lcom/google/android/gms/internal/ads/zzajb;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzc:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzj:Lcom/google/android/gms/internal/ads/zzajb;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzajb;->zzf(JJ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagb;->zza(Lcom/google/android/gms/internal/ads/zzado;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xffd8

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagb;->zza(Lcom/google/android/gms/internal/ads/zzado;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:I

    .line 17
    .line 18
    const v1, 0xffe0

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    move-object v4, p1

    .line 34
    check-cast v4, Lcom/google/android/gms/internal/ads/zzadd;

    .line 35
    .line 36
    invoke-virtual {v4, v1, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzm([BIIZ)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x2

    .line 44
    .line 45
    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzl(IZ)Z

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagb;->zza(Lcom/google/android/gms/internal/ads/zzado;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zzd:I

    .line 53
    .line 54
    :cond_1
    const v1, 0xffe1

    .line 55
    .line 56
    .line 57
    if-ne v0, v1, :cond_2

    .line 58
    .line 59
    check-cast p1, Lcom/google/android/gms/internal/ads/zzadd;

    .line 60
    .line 61
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzl(IZ)Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagb;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p1, v3, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzm([BIIZ)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    const-wide/32 v5, 0x45786966    # 5.758429993E-315

    .line 82
    .line 83
    .line 84
    cmp-long p1, v3, v5

    .line 85
    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_2

    .line 93
    .line 94
    const/4 p1, 0x1

    .line 95
    return p1

    .line 96
    :cond_2
    return v2
.end method
