.class public final Lcom/google/android/gms/internal/ads/zzabl;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabp;

.field private zzc:Z

.field private zzd:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private zzj:F

.field private zzk:Lcom/google/android/gms/internal/ads/zzdg;

.field private zzl:Z

.field private zzm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzabk;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzabk;

    .line 5
    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabp;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzabp;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 15
    .line 16
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zze:J

    .line 22
    .line 23
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzg:J

    .line 24
    .line 25
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 26
    .line 27
    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzj:F

    .line 30
    .line 31
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzk:Lcom/google/android/gms/internal/ads/zzdg;

    .line 34
    .line 35
    return-void
.end method

.method private final zzo(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza(JJJJZZLcom/google/android/gms/internal/ads/zzabj;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v10, p11

    .line 8
    .line 9
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zzg(Lcom/google/android/gms/internal/ads/zzabj;)V

    .line 10
    .line 11
    .line 12
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzabl;->zze:J

    .line 13
    .line 14
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v3, v6, v8

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzabl;->zze:J

    .line 24
    .line 25
    :cond_0
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzg:J

    .line 26
    .line 27
    cmp-long v3, v6, v1

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 32
    .line 33
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzabp;->zzd(J)V

    .line 34
    .line 35
    .line 36
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzg:J

    .line 37
    .line 38
    :cond_1
    sub-long/2addr v1, v4

    .line 39
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzj:F

    .line 40
    .line 41
    float-to-double v6, v3

    .line 42
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Z

    .line 43
    .line 44
    long-to-double v1, v1

    .line 45
    div-double/2addr v1, v6

    .line 46
    double-to-long v1, v1

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzk:Lcom/google/android/gms/internal/ads/zzdg;

    .line 50
    .line 51
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    sub-long v6, v6, p5

    .line 60
    .line 61
    sub-long/2addr v1, v6

    .line 62
    :cond_2
    invoke-static {v10, v1, v2}, Lcom/google/android/gms/internal/ads/zzabj;->zze(Lcom/google/android/gms/internal/ads/zzabj;J)V

    .line 63
    .line 64
    .line 65
    const/4 v11, 0x3

    .line 66
    if-eqz p9, :cond_4

    .line 67
    .line 68
    if-eqz p10, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    return v11

    .line 72
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzl:Z

    .line 73
    .line 74
    const/4 v12, 0x4

    .line 75
    const/4 v13, 0x5

    .line 76
    const/4 v14, 0x1

    .line 77
    if-nez v1, :cond_7

    .line 78
    .line 79
    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzm:Z

    .line 80
    .line 81
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzabk;

    .line 82
    .line 83
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabj;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    const/4 v9, 0x1

    .line 88
    move-wide/from16 v6, p5

    .line 89
    .line 90
    move/from16 v8, p10

    .line 91
    .line 92
    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzabk;->zzaU(JJJZZ)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    return v12

    .line 99
    :cond_5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Z

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabj;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    const-wide/16 v3, 0x7530

    .line 108
    .line 109
    cmp-long v1, v1, v3

    .line 110
    .line 111
    if-gez v1, :cond_6

    .line 112
    .line 113
    return v11

    .line 114
    :cond_6
    return v13

    .line 115
    :cond_7
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabj;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v1

    .line 119
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 120
    .line 121
    cmp-long v3, v3, v8

    .line 122
    .line 123
    const-wide/16 v15, -0x7530

    .line 124
    .line 125
    const/4 v4, 0x2

    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzi:Z

    .line 129
    .line 130
    if-nez v3, :cond_8

    .line 131
    .line 132
    const/16 p2, 0x0

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 136
    .line 137
    if-eqz v3, :cond_c

    .line 138
    .line 139
    if-eq v3, v14, :cond_b

    .line 140
    .line 141
    if-eq v3, v4, :cond_a

    .line 142
    .line 143
    if-ne v3, v11, :cond_9

    .line 144
    .line 145
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzk:Lcom/google/android/gms/internal/ads/zzdg;

    .line 146
    .line 147
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 148
    .line 149
    .line 150
    move-result-wide v6

    .line 151
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 152
    .line 153
    .line 154
    move-result-wide v6

    .line 155
    const/16 p2, 0x0

    .line 156
    .line 157
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzf:J

    .line 158
    .line 159
    sub-long/2addr v6, v4

    .line 160
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Z

    .line 161
    .line 162
    if-eqz v3, :cond_d

    .line 163
    .line 164
    cmp-long v1, v1, v15

    .line 165
    .line 166
    if-gez v1, :cond_d

    .line 167
    .line 168
    const-wide/32 v1, 0x186a0

    .line 169
    .line 170
    .line 171
    cmp-long v1, v6, v1

    .line 172
    .line 173
    if-lez v1, :cond_d

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 179
    .line 180
    .line 181
    throw v1

    .line 182
    :cond_a
    const/16 p2, 0x0

    .line 183
    .line 184
    cmp-long v1, p3, p7

    .line 185
    .line 186
    if-ltz v1, :cond_d

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_b
    const/16 p2, 0x0

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_c
    const/16 p2, 0x0

    .line 193
    .line 194
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Z

    .line 195
    .line 196
    if-eqz v1, :cond_d

    .line 197
    .line 198
    :goto_1
    return p2

    .line 199
    :cond_d
    :goto_2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Z

    .line 200
    .line 201
    if-eqz v1, :cond_14

    .line 202
    .line 203
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zze:J

    .line 204
    .line 205
    cmp-long v1, p3, v1

    .line 206
    .line 207
    if-nez v1, :cond_e

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzk:Lcom/google/android/gms/internal/ads/zzdg;

    .line 211
    .line 212
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdg;->zzc()J

    .line 213
    .line 214
    .line 215
    move-result-wide v1

    .line 216
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 217
    .line 218
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabj;)J

    .line 219
    .line 220
    .line 221
    move-result-wide v4

    .line 222
    const-wide/16 v6, 0x3e8

    .line 223
    .line 224
    mul-long/2addr v4, v6

    .line 225
    add-long/2addr v4, v1

    .line 226
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzabp;->zza(J)J

    .line 227
    .line 228
    .line 229
    move-result-wide v3

    .line 230
    invoke-static {v10, v3, v4}, Lcom/google/android/gms/internal/ads/zzabj;->zzf(Lcom/google/android/gms/internal/ads/zzabj;J)V

    .line 231
    .line 232
    .line 233
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zzb(Lcom/google/android/gms/internal/ads/zzabj;)J

    .line 234
    .line 235
    .line 236
    move-result-wide v3

    .line 237
    sub-long/2addr v3, v1

    .line 238
    div-long/2addr v3, v6

    .line 239
    invoke-static {v10, v3, v4}, Lcom/google/android/gms/internal/ads/zzabj;->zze(Lcom/google/android/gms/internal/ads/zzabj;J)V

    .line 240
    .line 241
    .line 242
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 243
    .line 244
    cmp-long v1, v1, v8

    .line 245
    .line 246
    if-eqz v1, :cond_f

    .line 247
    .line 248
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zzi:Z

    .line 249
    .line 250
    if-nez v1, :cond_f

    .line 251
    .line 252
    move v9, v14

    .line 253
    goto :goto_3

    .line 254
    :cond_f
    move/from16 v9, p2

    .line 255
    .line 256
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabl;->zza:Lcom/google/android/gms/internal/ads/zzabk;

    .line 257
    .line 258
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabj;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v2

    .line 262
    move-wide/from16 v4, p3

    .line 263
    .line 264
    move-wide/from16 v6, p5

    .line 265
    .line 266
    move/from16 v8, p10

    .line 267
    .line 268
    const/16 v17, 0x2

    .line 269
    .line 270
    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzabk;->zzaU(JJJZZ)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_10

    .line 275
    .line 276
    return v12

    .line 277
    :cond_10
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabj;)J

    .line 278
    .line 279
    .line 280
    move-result-wide v1

    .line 281
    cmp-long v1, v1, v15

    .line 282
    .line 283
    if-gez v1, :cond_12

    .line 284
    .line 285
    if-nez p10, :cond_12

    .line 286
    .line 287
    if-eqz v9, :cond_11

    .line 288
    .line 289
    return v11

    .line 290
    :cond_11
    return v17

    .line 291
    :cond_12
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzabj;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v1

    .line 295
    const-wide/32 v3, 0xc350

    .line 296
    .line 297
    .line 298
    cmp-long v1, v1, v3

    .line 299
    .line 300
    if-lez v1, :cond_13

    .line 301
    .line 302
    return v13

    .line 303
    :cond_13
    return v14

    .line 304
    :cond_14
    :goto_4
    return v13
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzi:Z

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 9
    .line 10
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzk:Lcom/google/android/gms/internal/ads/zzdg;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzf:J

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzg()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzc:Z

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzh()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzf(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzo(I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 16
    .line 17
    return-void
.end method

.method public final zzg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabp;->zzf()V

    .line 4
    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzg:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zze:J

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzabl;->zzo(I)V

    .line 17
    .line 18
    .line 19
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 20
    .line 21
    return-void
.end method

.method public final zzh(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabp;->zzj(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzk:Lcom/google/android/gms/internal/ads/zzdg;

    .line 2
    .line 3
    return-void
.end method

.method public final zzj(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabp;->zzc(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzk(Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzl:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzm:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabp;->zzi(Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzo(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final zzl(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzj:F

    .line 13
    .line 14
    cmpl-float v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzj:F

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzb:Lcom/google/android/gms/internal/ads/zzabp;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabp;->zze(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final zzm(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzl:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzm:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 27
    .line 28
    cmp-long p1, v3, v1

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzk:Lcom/google/android/gms/internal/ads/zzdg;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 41
    .line 42
    cmp-long p1, v4, v6

    .line 43
    .line 44
    if-gez p1, :cond_3

    .line 45
    .line 46
    return v0

    .line 47
    :cond_3
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzh:J

    .line 48
    .line 49
    return v3
.end method

.method public final zzn()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzd:I

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzk:Lcom/google/android/gms/internal/ads/zzdg;

    .line 7
    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzf:J

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method
