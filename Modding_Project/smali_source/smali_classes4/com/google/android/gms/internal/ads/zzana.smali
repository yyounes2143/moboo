.class public final Lcom/google/android/gms/internal/ads/zzana;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzanv;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzd:Lcom/google/android/gms/internal/ads/zzamz;

.field private zze:Z

.field private final zzf:[Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzanj;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzanj;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzanj;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzanj;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzanj;

.field private zzl:J

.field private zzm:J

.field private final zzn:Lcom/google/android/gms/internal/ads/zzek;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanv;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zza:Lcom/google/android/gms/internal/ads/zzanv;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array p1, p1, [Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzf:[Z

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanj;

    .line 12
    .line 13
    const/16 p2, 0x20

    .line 14
    .line 15
    const/16 v0, 0x80

    .line 16
    .line 17
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(II)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzg:Lcom/google/android/gms/internal/ads/zzanj;

    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanj;

    .line 23
    .line 24
    const/16 p2, 0x21

    .line 25
    .line 26
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(II)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzanj;

    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanj;

    .line 32
    .line 33
    const/16 p2, 0x22

    .line 34
    .line 35
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(II)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzi:Lcom/google/android/gms/internal/ads/zzanj;

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanj;

    .line 41
    .line 42
    const/16 p2, 0x27

    .line 43
    .line 44
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzj:Lcom/google/android/gms/internal/ads/zzanj;

    .line 48
    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanj;

    .line 50
    .line 51
    const/16 p2, 0x28

    .line 52
    .line 53
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(II)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Lcom/google/android/gms/internal/ads/zzanj;

    .line 57
    .line 58
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 64
    .line 65
    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 71
    .line 72
    return-void
.end method

.method private final zzf(JIIJ)V
    .locals 18
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move-wide/from16 v2, p5

    .line 6
    .line 7
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zzd:Lcom/google/android/gms/internal/ads/zzamz;

    .line 8
    .line 9
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzana;->zze:Z

    .line 10
    .line 11
    move-wide/from16 v6, p1

    .line 12
    .line 13
    move/from16 v8, p3

    .line 14
    .line 15
    invoke-virtual {v4, v6, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzamz;->zza(JIZ)V

    .line 16
    .line 17
    .line 18
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zze:Z

    .line 19
    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zzg:Lcom/google/android/gms/internal/ads/zzanj;

    .line 23
    .line 24
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzanj;->zzd(I)Z

    .line 25
    .line 26
    .line 27
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzanj;

    .line 28
    .line 29
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzanj;->zzd(I)Z

    .line 30
    .line 31
    .line 32
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzana;->zzi:Lcom/google/android/gms/internal/ads/zzanj;

    .line 33
    .line 34
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzanj;->zzd(I)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanj;->zze()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_2

    .line 42
    .line 43
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzanj;->zze()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzanj;->zze()Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_2

    .line 54
    .line 55
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzana;->zzb:Ljava/lang/String;

    .line 56
    .line 57
    iget v8, v4, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 58
    .line 59
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 60
    .line 61
    add-int/2addr v9, v8

    .line 62
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 63
    .line 64
    add-int/2addr v9, v10

    .line 65
    new-array v9, v9, [B

    .line 66
    .line 67
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzanj;->zza:[B

    .line 68
    .line 69
    const/4 v11, 0x0

    .line 70
    invoke-static {v10, v11, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzanj;->zza:[B

    .line 74
    .line 75
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 76
    .line 77
    iget v12, v5, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 78
    .line 79
    invoke-static {v8, v11, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzanj;->zza:[B

    .line 83
    .line 84
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 85
    .line 86
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 87
    .line 88
    add-int/2addr v4, v10

    .line 89
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 90
    .line 91
    invoke-static {v8, v11, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .line 93
    .line 94
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzanj;->zza:[B

    .line 95
    .line 96
    const/4 v6, 0x3

    .line 97
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    invoke-static {v4, v6, v5, v8}, Lcom/google/android/gms/internal/ads/zzfs;->zzd([BIILcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzfm;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Lcom/google/android/gms/internal/ads/zzfh;

    .line 105
    .line 106
    if-eqz v5, :cond_0

    .line 107
    .line 108
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzfh;->zzf:I

    .line 109
    .line 110
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzfh;->zze:[I

    .line 111
    .line 112
    iget v15, v5, Lcom/google/android/gms/internal/ads/zzfh;->zzd:I

    .line 113
    .line 114
    iget v14, v5, Lcom/google/android/gms/internal/ads/zzfh;->zzc:I

    .line 115
    .line 116
    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/zzfh;->zzb:Z

    .line 117
    .line 118
    iget v12, v5, Lcom/google/android/gms/internal/ads/zzfh;->zza:I

    .line 119
    .line 120
    move/from16 v17, v6

    .line 121
    .line 122
    move-object/from16 v16, v8

    .line 123
    .line 124
    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzdh;->zzd(IZII[II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzx;

    .line 129
    .line 130
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 134
    .line 135
    .line 136
    const-string v6, "video/mp2t"

    .line 137
    .line 138
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 139
    .line 140
    .line 141
    const-string v6, "video/hevc"

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 147
    .line 148
    .line 149
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfm;->zze:I

    .line 150
    .line 151
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 152
    .line 153
    .line 154
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzf:I

    .line 155
    .line 156
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 157
    .line 158
    .line 159
    new-instance v6, Lcom/google/android/gms/internal/ads/zzi;

    .line 160
    .line 161
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 162
    .line 163
    .line 164
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzi:I

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 167
    .line 168
    .line 169
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzj:I

    .line 170
    .line 171
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 172
    .line 173
    .line 174
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzk:I

    .line 175
    .line 176
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 177
    .line 178
    .line 179
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzc:I

    .line 180
    .line 181
    add-int/lit8 v7, v7, 0x8

    .line 182
    .line 183
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 184
    .line 185
    .line 186
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzd:I

    .line 187
    .line 188
    add-int/lit8 v7, v7, 0x8

    .line 189
    .line 190
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzD(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzx;

    .line 198
    .line 199
    .line 200
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzg:F

    .line 201
    .line 202
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(F)Lcom/google/android/gms/internal/ads/zzx;

    .line 203
    .line 204
    .line 205
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfm;->zzh:I

    .line 206
    .line 207
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzU(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 208
    .line 209
    .line 210
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfm;->zza:I

    .line 211
    .line 212
    const/4 v6, 0x1

    .line 213
    add-int/2addr v4, v6

    .line 214
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzV(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 215
    .line 216
    .line 217
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaet;

    .line 229
    .line 230
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 231
    .line 232
    .line 233
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzq:I

    .line 234
    .line 235
    const/4 v5, -0x1

    .line 236
    if-eq v4, v5, :cond_1

    .line 237
    .line 238
    move v11, v6

    .line 239
    :cond_1
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfvc;->zzl(Z)V

    .line 240
    .line 241
    .line 242
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzana;->zza:Lcom/google/android/gms/internal/ads/zzanv;

    .line 243
    .line 244
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzanv;->zzf(I)V

    .line 245
    .line 246
    .line 247
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzana;->zze:Z

    .line 248
    .line 249
    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zzj:Lcom/google/android/gms/internal/ads/zzanj;

    .line 250
    .line 251
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzanj;->zzd(I)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    const/4 v6, 0x5

    .line 256
    if-eqz v5, :cond_3

    .line 257
    .line 258
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzanj;->zza:[B

    .line 259
    .line 260
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 261
    .line 262
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfs;->zzc([BI)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzana;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 267
    .line 268
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzanj;->zza:[B

    .line 269
    .line 270
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 274
    .line 275
    .line 276
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zza:Lcom/google/android/gms/internal/ads/zzanv;

    .line 277
    .line 278
    invoke-virtual {v4, v2, v3, v7}, Lcom/google/android/gms/internal/ads/zzanv;->zzc(JLcom/google/android/gms/internal/ads/zzek;)V

    .line 279
    .line 280
    .line 281
    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Lcom/google/android/gms/internal/ads/zzanj;

    .line 282
    .line 283
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzanj;->zzd(I)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_4

    .line 288
    .line 289
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzanj;->zza:[B

    .line 290
    .line 291
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzanj;->zzb:I

    .line 292
    .line 293
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzfs;->zzc([BI)I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzana;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    .line 298
    .line 299
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzanj;->zza:[B

    .line 300
    .line 301
    invoke-virtual {v5, v4, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 305
    .line 306
    .line 307
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zza:Lcom/google/android/gms/internal/ads/zzanv;

    .line 308
    .line 309
    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzanv;->zzc(JLcom/google/android/gms/internal/ads/zzek;)V

    .line 310
    .line 311
    .line 312
    :cond_4
    return-void
.end method

.method private final zzg([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzd:Lcom/google/android/gms/internal/ads/zzamz;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamz;->zzb([BII)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zze:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzg:Lcom/google/android/gms/internal/ads/zzanj;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanj;->zza([BII)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzanj;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanj;->zza([BII)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzi:Lcom/google/android/gms/internal/ads/zzanj;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanj;->zza([BII)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzj:Lcom/google/android/gms/internal/ads/zzanj;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanj;->zza([BII)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Lcom/google/android/gms/internal/ads/zzanj;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanj;->zza([BII)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final zzh(JIIJ)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzd:Lcom/google/android/gms/internal/ads/zzamz;

    .line 2
    .line 3
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzana;->zze:Z

    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-wide v5, p5

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzamz;->zzd(JIIJZ)V

    .line 10
    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zze:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzg:Lcom/google/android/gms/internal/ads/zzanj;

    .line 17
    .line 18
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzanj;->zzc(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzanj;

    .line 22
    .line 23
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzanj;->zzc(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzi:Lcom/google/android/gms/internal/ads/zzanj;

    .line 27
    .line 28
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzanj;->zzc(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzj:Lcom/google/android/gms/internal/ads/zzanj;

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzanj;->zzc(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Lcom/google/android/gms/internal/ads/zzanj;

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzanj;->zzc(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v7, 0x3

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaet;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_5

    .line 16
    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzl:J

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    int-to-long v4, v4

    .line 36
    add-long/2addr v2, v4

    .line 37
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzl:J

    .line 38
    .line 39
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaet;

    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    move-object/from16 v10, p1

    .line 46
    .line 47
    invoke-interface {v2, v10, v3}, Lcom/google/android/gms/internal/ads/zzaet;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    if-ge v1, v8, :cond_0

    .line 51
    .line 52
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzana;->zzf:[Z

    .line 53
    .line 54
    invoke-static {v9, v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzfs;->zza([BII[Z)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eq v2, v8, :cond_4

    .line 59
    .line 60
    add-int/lit8 v3, v2, 0x3

    .line 61
    .line 62
    aget-byte v3, v9, v3

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x7e

    .line 65
    .line 66
    if-lez v2, :cond_1

    .line 67
    .line 68
    add-int/lit8 v4, v2, -0x1

    .line 69
    .line 70
    aget-byte v5, v9, v4

    .line 71
    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    const/4 v2, 0x4

    .line 75
    move v12, v2

    .line 76
    move v11, v4

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    move v11, v2

    .line 79
    move v12, v7

    .line 80
    :goto_1
    sub-int v2, v11, v1

    .line 81
    .line 82
    if-lez v2, :cond_2

    .line 83
    .line 84
    invoke-direct {v0, v9, v1, v11}, Lcom/google/android/gms/internal/ads/zzana;->zzg([BII)V

    .line 85
    .line 86
    .line 87
    :cond_2
    move v1, v3

    .line 88
    sub-int v3, v8, v11

    .line 89
    .line 90
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzana;->zzl:J

    .line 91
    .line 92
    int-to-long v13, v3

    .line 93
    sub-long/2addr v4, v13

    .line 94
    if-gez v2, :cond_3

    .line 95
    .line 96
    neg-int v2, v2

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const/4 v2, 0x0

    .line 99
    :goto_2
    shr-int/lit8 v13, v1, 0x1

    .line 100
    .line 101
    move-wide v15, v4

    .line 102
    move v4, v2

    .line 103
    move-wide v1, v15

    .line 104
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 105
    .line 106
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzana;->zzf(JIIJ)V

    .line 107
    .line 108
    .line 109
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 110
    .line 111
    move v4, v13

    .line 112
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzana;->zzh(JIIJ)V

    .line 113
    .line 114
    .line 115
    add-int v1, v11, v12

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-direct {v0, v9, v1, v8}, Lcom/google/android/gms/internal/ads/zzana;->zzg([BII)V

    .line 119
    .line 120
    .line 121
    :cond_5
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaof;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zzc()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zzb()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzb:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaof;->zza()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaet;

    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/zzamz;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzamz;-><init>(Lcom/google/android/gms/internal/ads/zzaet;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzd:Lcom/google/android/gms/internal/ads/zzamz;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zza:Lcom/google/android/gms/internal/ads/zzanv;

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanv;->zzd(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaof;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zzc(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzc:Lcom/google/android/gms/internal/ads/zzaet;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zza:Lcom/google/android/gms/internal/ads/zzanv;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzanv;->zze()V

    .line 13
    .line 14
    .line 15
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzl:J

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    move-object v0, p0

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzana;->zzf(JIIJ)V

    .line 23
    .line 24
    .line 25
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzana;->zzl:J

    .line 26
    .line 27
    const/16 v11, 0x30

    .line 28
    .line 29
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    move-object v7, v0

    .line 33
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzana;->zzh(JIIJ)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 2
    .line 3
    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzl:J

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzm:J

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzf:[Z

    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzi([Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzg:Lcom/google/android/gms/internal/ads/zzanj;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzb()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzh:Lcom/google/android/gms/internal/ads/zzanj;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzb()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzi:Lcom/google/android/gms/internal/ads/zzanj;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzb()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzj:Lcom/google/android/gms/internal/ads/zzanj;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzb()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzk:Lcom/google/android/gms/internal/ads/zzanj;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanj;->zzb()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zza:Lcom/google/android/gms/internal/ads/zzanv;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanv;->zzb()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzana;->zzd:Lcom/google/android/gms/internal/ads/zzamz;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamz;->zzc()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
