.class final Lcom/google/android/gms/internal/ads/zzakb;
.super Lcom/google/android/gms/internal/ads/zzajz;
.source "Proguard"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzaka;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:I

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/internal/ads/zzaey;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzaew;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajz;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)J
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-byte v0, v0, v1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    aget-byte v0, v0, v1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzaka;

    .line 22
    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzaka;->zze:I

    .line 27
    .line 28
    shr-int/2addr v0, v2

    .line 29
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzaka;->zzd:[Lcom/google/android/gms/internal/ads/zzaex;

    .line 30
    .line 31
    const/16 v6, 0xff

    .line 32
    .line 33
    const/16 v7, 0x8

    .line 34
    .line 35
    rsub-int/lit8 v4, v4, 0x8

    .line 36
    .line 37
    ushr-int v4, v6, v4

    .line 38
    .line 39
    and-int/2addr v0, v4

    .line 40
    aget-object v0, v5, v0

    .line 41
    .line 42
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaex;->zza:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzaka;->zza:Lcom/google/android/gms/internal/ads/zzaey;

    .line 47
    .line 48
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaey;->zze:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzaka;->zza:Lcom/google/android/gms/internal/ads/zzaey;

    .line 52
    .line 53
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaey;->zzf:I

    .line 54
    .line 55
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzc:Z

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:I

    .line 60
    .line 61
    add-int/2addr v1, v0

    .line 62
    div-int/lit8 v1, v1, 0x4

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzb()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    add-int/lit8 v4, v4, 0x4

    .line 73
    .line 74
    if-ge v3, v4, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    add-int/lit8 v4, v4, 0x4

    .line 85
    .line 86
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    array-length v4, v3

    .line 91
    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    add-int/lit8 v3, v3, 0x4

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 102
    .line 103
    .line 104
    :goto_1
    int-to-long v3, v1

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    add-int/lit8 v5, v5, -0x4

    .line 114
    .line 115
    const-wide/16 v8, 0xff

    .line 116
    .line 117
    and-long v10, v3, v8

    .line 118
    .line 119
    long-to-int v6, v10

    .line 120
    int-to-byte v6, v6

    .line 121
    aput-byte v6, v1, v5

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    add-int/lit8 v5, v5, -0x3

    .line 128
    .line 129
    ushr-long v6, v3, v7

    .line 130
    .line 131
    and-long/2addr v6, v8

    .line 132
    long-to-int v6, v6

    .line 133
    int-to-byte v6, v6

    .line 134
    aput-byte v6, v1, v5

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    add-int/lit8 v5, v5, -0x2

    .line 141
    .line 142
    const/16 v6, 0x10

    .line 143
    .line 144
    ushr-long v6, v3, v6

    .line 145
    .line 146
    and-long/2addr v6, v8

    .line 147
    long-to-int v6, v6

    .line 148
    int-to-byte v6, v6

    .line 149
    aput-byte v6, v1, v5

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    add-int/lit8 p1, p1, -0x1

    .line 156
    .line 157
    const/16 v5, 0x18

    .line 158
    .line 159
    ushr-long v5, v3, v5

    .line 160
    .line 161
    and-long/2addr v5, v8

    .line 162
    long-to-int v5, v5

    .line 163
    int-to-byte v5, v5

    .line 164
    aput-byte v5, v1, p1

    .line 165
    .line 166
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzc:Z

    .line 167
    .line 168
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:I

    .line 169
    .line 170
    return-wide v3
.end method

.method public final zzb(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzajz;->zzb(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzaka;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzd:Lcom/google/android/gms/internal/ads/zzaey;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zze:Lcom/google/android/gms/internal/ads/zzaew;

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:I

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzc:Z

    .line 17
    .line 18
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzek;JLcom/google/android/gms/internal/ads/zzajw;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzaka;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakb;->zzd:Lcom/google/android/gms/internal/ads/zzaey;

    .line 19
    .line 20
    const/4 v11, 0x1

    .line 21
    if-nez v6, :cond_5

    .line 22
    .line 23
    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzaez;->zzd(ILcom/google/android/gms/internal/ads/zzek;Z)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzj()I

    .line 27
    .line 28
    .line 29
    move-result v13

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 31
    .line 32
    .line 33
    move-result v14

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzj()I

    .line 35
    .line 36
    .line 37
    move-result v15

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-gtz v6, :cond_1

    .line 43
    .line 44
    const/16 v16, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move/from16 v16, v6

    .line 48
    .line 49
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-gtz v6, :cond_2

    .line 54
    .line 55
    const/16 v17, -0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move/from16 v17, v6

    .line 59
    .line 60
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-gtz v6, :cond_3

    .line 65
    .line 66
    const/16 v18, -0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move/from16 v18, v6

    .line 70
    .line 71
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    and-int/lit8 v6, v3, 0xf

    .line 76
    .line 77
    int-to-double v8, v6

    .line 78
    const/16 p2, 0x4

    .line 79
    .line 80
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 81
    .line 82
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    double-to-int v8, v8

    .line 87
    and-int/lit16 v3, v3, 0xf0

    .line 88
    .line 89
    shr-int/lit8 v3, v3, 0x4

    .line 90
    .line 91
    int-to-double v9, v3

    .line 92
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    double-to-int v3, v5

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    and-int/2addr v5, v11

    .line 102
    if-eq v11, v5, :cond_4

    .line 103
    .line 104
    move/from16 v21, v4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move/from16 v21, v11

    .line 108
    .line 109
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 118
    .line 119
    .line 120
    move-result-object v22

    .line 121
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaey;

    .line 122
    .line 123
    move/from16 v20, v3

    .line 124
    .line 125
    move/from16 v19, v8

    .line 126
    .line 127
    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzaey;-><init>(IIIIIIIIZ[B)V

    .line 128
    .line 129
    .line 130
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzakb;->zzd:Lcom/google/android/gms/internal/ads/zzaey;

    .line 131
    .line 132
    :goto_4
    const/4 v7, 0x0

    .line 133
    goto/16 :goto_22

    .line 134
    .line 135
    :cond_5
    const/16 p2, 0x4

    .line 136
    .line 137
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzakb;->zze:Lcom/google/android/gms/internal/ads/zzaew;

    .line 138
    .line 139
    if-nez v5, :cond_6

    .line 140
    .line 141
    invoke-static {v1, v11, v11}, Lcom/google/android/gms/internal/ads/zzaez;->zzc(Lcom/google/android/gms/internal/ads/zzek;ZZ)Lcom/google/android/gms/internal/ads/zzaew;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzakb;->zze:Lcom/google/android/gms/internal/ads/zzaew;

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    new-array v8, v8, [B

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    invoke-static {v9, v4, v8, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    .line 164
    .line 165
    iget v9, v6, Lcom/google/android/gms/internal/ads/zzaey;->zza:I

    .line 166
    .line 167
    const/4 v10, 0x5

    .line 168
    invoke-static {v10, v1, v4}, Lcom/google/android/gms/internal/ads/zzaez;->zzd(ILcom/google/android/gms/internal/ads/zzek;Z)Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    add-int/2addr v12, v11

    .line 176
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaev;

    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    invoke-direct {v13, v14}, Lcom/google/android/gms/internal/ads/zzaev;-><init>([B)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    const/16 v14, 0x8

    .line 190
    .line 191
    mul-int/2addr v1, v14

    .line 192
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 193
    .line 194
    .line 195
    move v1, v4

    .line 196
    :goto_5
    const/16 v15, 0x18

    .line 197
    .line 198
    const/4 v3, 0x2

    .line 199
    const/16 v4, 0x10

    .line 200
    .line 201
    if-ge v1, v12, :cond_11

    .line 202
    .line 203
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 204
    .line 205
    .line 206
    move-result v14

    .line 207
    const v7, 0x564342

    .line 208
    .line 209
    .line 210
    if-ne v14, v7, :cond_10

    .line 211
    .line 212
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzd()Z

    .line 221
    .line 222
    .line 223
    move-result v14

    .line 224
    if-nez v14, :cond_a

    .line 225
    .line 226
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzd()Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    const/4 v15, 0x0

    .line 231
    :goto_6
    if-ge v15, v7, :cond_9

    .line 232
    .line 233
    if-eqz v14, :cond_7

    .line 234
    .line 235
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzd()Z

    .line 236
    .line 237
    .line 238
    move-result v18

    .line 239
    if-eqz v18, :cond_8

    .line 240
    .line 241
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_7
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 246
    .line 247
    .line 248
    :cond_8
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_9
    move/from16 v14, p2

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_a
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 255
    .line 256
    .line 257
    const/4 v14, 0x0

    .line 258
    :goto_8
    if-ge v14, v7, :cond_9

    .line 259
    .line 260
    sub-int v15, v7, v14

    .line 261
    .line 262
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzaez;->zza(I)I

    .line 263
    .line 264
    .line 265
    move-result v15

    .line 266
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    add-int/2addr v14, v15

    .line 271
    goto :goto_8

    .line 272
    :goto_9
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    if-gt v15, v3, :cond_f

    .line 277
    .line 278
    if-eq v15, v11, :cond_c

    .line 279
    .line 280
    if-ne v15, v3, :cond_b

    .line 281
    .line 282
    goto :goto_a

    .line 283
    :cond_b
    move v14, v11

    .line 284
    goto :goto_c

    .line 285
    :cond_c
    move v3, v15

    .line 286
    :goto_a
    const/16 v15, 0x20

    .line 287
    .line 288
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 295
    .line 296
    .line 297
    move-result v15

    .line 298
    add-int/2addr v15, v11

    .line 299
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 300
    .line 301
    .line 302
    if-ne v3, v11, :cond_e

    .line 303
    .line 304
    if-eqz v4, :cond_d

    .line 305
    .line 306
    move v14, v11

    .line 307
    int-to-long v10, v7

    .line 308
    int-to-long v3, v4

    .line 309
    long-to-double v3, v3

    .line 310
    long-to-double v10, v10

    .line 311
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 312
    .line 313
    div-double v3, v19, v3

    .line 314
    .line 315
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 316
    .line 317
    .line 318
    move-result-wide v3

    .line 319
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 320
    .line 321
    .line 322
    move-result-wide v3

    .line 323
    double-to-long v3, v3

    .line 324
    goto :goto_b

    .line 325
    :cond_d
    move v14, v11

    .line 326
    const-wide/16 v3, 0x0

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_e
    move v14, v11

    .line 330
    int-to-long v3, v4

    .line 331
    int-to-long v10, v7

    .line 332
    mul-long/2addr v3, v10

    .line 333
    :goto_b
    int-to-long v10, v15

    .line 334
    mul-long/2addr v3, v10

    .line 335
    long-to-int v3, v3

    .line 336
    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 337
    .line 338
    .line 339
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 340
    .line 341
    move v11, v14

    .line 342
    const/16 p2, 0x4

    .line 343
    .line 344
    const/4 v4, 0x0

    .line 345
    const/4 v10, 0x5

    .line 346
    const/16 v14, 0x8

    .line 347
    .line 348
    goto/16 :goto_5

    .line 349
    .line 350
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v2, "lookup type greater than 2 not decodable: "

    .line 356
    .line 357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    const/4 v2, 0x0

    .line 368
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    throw v1

    .line 373
    :cond_10
    const/4 v2, 0x0

    .line 374
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zza()I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v4, "expected code book to start with [0x56, 0x43, 0x42] at "

    .line 384
    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    throw v1

    .line 400
    :cond_11
    move v14, v11

    .line 401
    const/4 v1, 0x6

    .line 402
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 403
    .line 404
    .line 405
    move-result v7

    .line 406
    add-int/2addr v7, v14

    .line 407
    const/4 v10, 0x0

    .line 408
    :goto_d
    if-ge v10, v7, :cond_13

    .line 409
    .line 410
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    if-nez v11, :cond_12

    .line 415
    .line 416
    add-int/lit8 v10, v10, 0x1

    .line 417
    .line 418
    goto :goto_d

    .line 419
    :cond_12
    const-string v1, "placeholder of time domain transforms not zeroed out"

    .line 420
    .line 421
    const/4 v2, 0x0

    .line 422
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    throw v1

    .line 427
    :cond_13
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    add-int/2addr v7, v14

    .line 432
    const/4 v10, 0x0

    .line 433
    :goto_e
    const/4 v11, 0x3

    .line 434
    if-ge v10, v7, :cond_1d

    .line 435
    .line 436
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 437
    .line 438
    .line 439
    move-result v12

    .line 440
    if-eqz v12, :cond_1b

    .line 441
    .line 442
    if-ne v12, v14, :cond_1a

    .line 443
    .line 444
    const/4 v14, 0x5

    .line 445
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 446
    .line 447
    .line 448
    move-result v12

    .line 449
    new-array v14, v12, [I

    .line 450
    .line 451
    const/4 v1, -0x1

    .line 452
    const/4 v15, 0x0

    .line 453
    :goto_f
    if-ge v15, v12, :cond_15

    .line 454
    .line 455
    const/4 v4, 0x4

    .line 456
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    aput v3, v14, v15

    .line 461
    .line 462
    if-le v3, v1, :cond_14

    .line 463
    .line 464
    move v1, v3

    .line 465
    :cond_14
    add-int/lit8 v15, v15, 0x1

    .line 466
    .line 467
    const/4 v3, 0x2

    .line 468
    const/16 v4, 0x10

    .line 469
    .line 470
    goto :goto_f

    .line 471
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 472
    .line 473
    new-array v3, v1, [I

    .line 474
    .line 475
    const/4 v4, 0x0

    .line 476
    :goto_10
    if-ge v4, v1, :cond_18

    .line 477
    .line 478
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 479
    .line 480
    .line 481
    move-result v15

    .line 482
    const/16 v19, 0x1

    .line 483
    .line 484
    add-int/lit8 v15, v15, 0x1

    .line 485
    .line 486
    aput v15, v3, v4

    .line 487
    .line 488
    const/4 v15, 0x2

    .line 489
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 490
    .line 491
    .line 492
    move-result v23

    .line 493
    if-lez v23, :cond_16

    .line 494
    .line 495
    const/16 v15, 0x8

    .line 496
    .line 497
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 498
    .line 499
    .line 500
    :goto_11
    move/from16 v24, v1

    .line 501
    .line 502
    const/4 v11, 0x0

    .line 503
    goto :goto_12

    .line 504
    :cond_16
    const/16 v15, 0x8

    .line 505
    .line 506
    goto :goto_11

    .line 507
    :goto_12
    shl-int v1, v19, v23

    .line 508
    .line 509
    move-object/from16 v19, v14

    .line 510
    .line 511
    if-ge v11, v1, :cond_17

    .line 512
    .line 513
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 514
    .line 515
    .line 516
    add-int/lit8 v11, v11, 0x1

    .line 517
    .line 518
    move-object/from16 v14, v19

    .line 519
    .line 520
    const/16 v15, 0x8

    .line 521
    .line 522
    const/16 v19, 0x1

    .line 523
    .line 524
    goto :goto_12

    .line 525
    :cond_17
    add-int/lit8 v4, v4, 0x1

    .line 526
    .line 527
    move-object/from16 v14, v19

    .line 528
    .line 529
    move/from16 v1, v24

    .line 530
    .line 531
    const/4 v11, 0x3

    .line 532
    goto :goto_10

    .line 533
    :cond_18
    move-object/from16 v19, v14

    .line 534
    .line 535
    const/4 v15, 0x2

    .line 536
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 537
    .line 538
    .line 539
    const/4 v4, 0x4

    .line 540
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 541
    .line 542
    .line 543
    move-result v1

    .line 544
    const/4 v4, 0x0

    .line 545
    const/4 v11, 0x0

    .line 546
    const/4 v15, 0x0

    .line 547
    :goto_13
    if-ge v4, v12, :cond_1c

    .line 548
    .line 549
    aget v23, v19, v4

    .line 550
    .line 551
    aget v23, v3, v23

    .line 552
    .line 553
    add-int v11, v11, v23

    .line 554
    .line 555
    :goto_14
    if-ge v15, v11, :cond_19

    .line 556
    .line 557
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 558
    .line 559
    .line 560
    add-int/lit8 v15, v15, 0x1

    .line 561
    .line 562
    goto :goto_14

    .line 563
    :cond_19
    add-int/lit8 v4, v4, 0x1

    .line 564
    .line 565
    goto :goto_13

    .line 566
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    const-string v2, "floor type greater than 1 not decodable: "

    .line 572
    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    const/4 v2, 0x0

    .line 584
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    throw v1

    .line 589
    :cond_1b
    const/16 v15, 0x8

    .line 590
    .line 591
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 592
    .line 593
    .line 594
    const/16 v1, 0x10

    .line 595
    .line 596
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 600
    .line 601
    .line 602
    const/4 v1, 0x6

    .line 603
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 607
    .line 608
    .line 609
    const/4 v4, 0x4

    .line 610
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    const/4 v14, 0x1

    .line 615
    add-int/2addr v1, v14

    .line 616
    const/4 v3, 0x0

    .line 617
    :goto_15
    if-ge v3, v1, :cond_1c

    .line 618
    .line 619
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 620
    .line 621
    .line 622
    add-int/lit8 v3, v3, 0x1

    .line 623
    .line 624
    const/16 v15, 0x8

    .line 625
    .line 626
    goto :goto_15

    .line 627
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    .line 628
    .line 629
    const/4 v1, 0x6

    .line 630
    const/4 v3, 0x2

    .line 631
    const/16 v4, 0x10

    .line 632
    .line 633
    const/4 v14, 0x1

    .line 634
    const/16 v15, 0x18

    .line 635
    .line 636
    goto/16 :goto_e

    .line 637
    .line 638
    :cond_1d
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    const/4 v14, 0x1

    .line 643
    add-int/2addr v3, v14

    .line 644
    const/4 v4, 0x0

    .line 645
    :goto_16
    if-ge v4, v3, :cond_24

    .line 646
    .line 647
    const/16 v7, 0x10

    .line 648
    .line 649
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 650
    .line 651
    .line 652
    move-result v10

    .line 653
    const/4 v15, 0x2

    .line 654
    if-gt v10, v15, :cond_23

    .line 655
    .line 656
    const/16 v7, 0x18

    .line 657
    .line 658
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 668
    .line 669
    .line 670
    move-result v10

    .line 671
    add-int/2addr v10, v14

    .line 672
    const/16 v15, 0x8

    .line 673
    .line 674
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 675
    .line 676
    .line 677
    new-array v1, v10, [I

    .line 678
    .line 679
    const/4 v11, 0x0

    .line 680
    :goto_17
    if-ge v11, v10, :cond_1f

    .line 681
    .line 682
    const/4 v12, 0x3

    .line 683
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 684
    .line 685
    .line 686
    move-result v19

    .line 687
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzd()Z

    .line 688
    .line 689
    .line 690
    move-result v20

    .line 691
    if-eqz v20, :cond_1e

    .line 692
    .line 693
    const/4 v7, 0x5

    .line 694
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 695
    .line 696
    .line 697
    move-result v18

    .line 698
    goto :goto_18

    .line 699
    :cond_1e
    const/4 v7, 0x5

    .line 700
    const/16 v18, 0x0

    .line 701
    .line 702
    :goto_18
    mul-int/lit8 v18, v18, 0x8

    .line 703
    .line 704
    add-int v18, v18, v19

    .line 705
    .line 706
    aput v18, v1, v11

    .line 707
    .line 708
    add-int/lit8 v11, v11, 0x1

    .line 709
    .line 710
    const/16 v7, 0x18

    .line 711
    .line 712
    goto :goto_17

    .line 713
    :cond_1f
    const/4 v12, 0x3

    .line 714
    const/4 v11, 0x0

    .line 715
    :goto_19
    const/4 v7, 0x5

    .line 716
    if-ge v11, v10, :cond_22

    .line 717
    .line 718
    const/4 v7, 0x0

    .line 719
    :goto_1a
    if-ge v7, v15, :cond_21

    .line 720
    .line 721
    aget v19, v1, v11

    .line 722
    .line 723
    const/4 v14, 0x1

    .line 724
    shl-int v23, v14, v7

    .line 725
    .line 726
    and-int v19, v19, v23

    .line 727
    .line 728
    if-eqz v19, :cond_20

    .line 729
    .line 730
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 731
    .line 732
    .line 733
    :cond_20
    add-int/lit8 v7, v7, 0x1

    .line 734
    .line 735
    const/16 v15, 0x8

    .line 736
    .line 737
    goto :goto_1a

    .line 738
    :cond_21
    add-int/lit8 v11, v11, 0x1

    .line 739
    .line 740
    const/16 v15, 0x8

    .line 741
    .line 742
    goto :goto_19

    .line 743
    :cond_22
    add-int/lit8 v4, v4, 0x1

    .line 744
    .line 745
    const/4 v1, 0x6

    .line 746
    const/4 v14, 0x1

    .line 747
    goto :goto_16

    .line 748
    :cond_23
    const-string v1, "residueType greater than 2 is not decodable"

    .line 749
    .line 750
    const/4 v2, 0x0

    .line 751
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    throw v1

    .line 756
    :cond_24
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    const/4 v14, 0x1

    .line 761
    add-int/2addr v3, v14

    .line 762
    const/4 v1, 0x0

    .line 763
    :goto_1b
    if-ge v1, v3, :cond_2b

    .line 764
    .line 765
    const/16 v7, 0x10

    .line 766
    .line 767
    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 768
    .line 769
    .line 770
    move-result v4

    .line 771
    if-eqz v4, :cond_25

    .line 772
    .line 773
    new-instance v7, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 776
    .line 777
    .line 778
    const-string v10, "mapping type other than 0 not supported: "

    .line 779
    .line 780
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    const-string v7, "VorbisUtil"

    .line 791
    .line 792
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    const/4 v10, 0x4

    .line 796
    const/4 v15, 0x2

    .line 797
    goto :goto_20

    .line 798
    :cond_25
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzd()Z

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    if-eqz v4, :cond_26

    .line 803
    .line 804
    const/4 v4, 0x4

    .line 805
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 806
    .line 807
    .line 808
    move-result v7

    .line 809
    const/4 v14, 0x1

    .line 810
    add-int/lit8 v4, v7, 0x1

    .line 811
    .line 812
    goto :goto_1c

    .line 813
    :cond_26
    const/4 v14, 0x1

    .line 814
    move v4, v14

    .line 815
    :goto_1c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzd()Z

    .line 816
    .line 817
    .line 818
    move-result v7

    .line 819
    if-eqz v7, :cond_27

    .line 820
    .line 821
    const/16 v15, 0x8

    .line 822
    .line 823
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 824
    .line 825
    .line 826
    move-result v7

    .line 827
    add-int/2addr v7, v14

    .line 828
    const/4 v10, 0x0

    .line 829
    :goto_1d
    if-ge v10, v7, :cond_27

    .line 830
    .line 831
    add-int/lit8 v11, v9, -0x1

    .line 832
    .line 833
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaez;->zza(I)I

    .line 834
    .line 835
    .line 836
    move-result v12

    .line 837
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 838
    .line 839
    .line 840
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaez;->zza(I)I

    .line 841
    .line 842
    .line 843
    move-result v11

    .line 844
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 845
    .line 846
    .line 847
    add-int/lit8 v10, v10, 0x1

    .line 848
    .line 849
    goto :goto_1d

    .line 850
    :cond_27
    const/4 v15, 0x2

    .line 851
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 852
    .line 853
    .line 854
    move-result v7

    .line 855
    if-nez v7, :cond_2a

    .line 856
    .line 857
    const/4 v14, 0x1

    .line 858
    if-le v4, v14, :cond_28

    .line 859
    .line 860
    const/4 v7, 0x0

    .line 861
    :goto_1e
    if-ge v7, v9, :cond_28

    .line 862
    .line 863
    const/4 v10, 0x4

    .line 864
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 865
    .line 866
    .line 867
    add-int/lit8 v7, v7, 0x1

    .line 868
    .line 869
    goto :goto_1e

    .line 870
    :cond_28
    const/4 v10, 0x4

    .line 871
    const/4 v7, 0x0

    .line 872
    :goto_1f
    if-ge v7, v4, :cond_29

    .line 873
    .line 874
    const/16 v11, 0x8

    .line 875
    .line 876
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzaev;->zzc(I)V

    .line 883
    .line 884
    .line 885
    add-int/lit8 v7, v7, 0x1

    .line 886
    .line 887
    goto :goto_1f

    .line 888
    :cond_29
    :goto_20
    add-int/lit8 v1, v1, 0x1

    .line 889
    .line 890
    goto :goto_1b

    .line 891
    :cond_2a
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    .line 892
    .line 893
    const/4 v2, 0x0

    .line 894
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 895
    .line 896
    .line 897
    move-result-object v1

    .line 898
    throw v1

    .line 899
    :cond_2b
    const/4 v1, 0x6

    .line 900
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 901
    .line 902
    .line 903
    move-result v1

    .line 904
    add-int/lit8 v3, v1, 0x1

    .line 905
    .line 906
    new-array v9, v3, [Lcom/google/android/gms/internal/ads/zzaex;

    .line 907
    .line 908
    const/4 v4, 0x0

    .line 909
    :goto_21
    if-ge v4, v3, :cond_2c

    .line 910
    .line 911
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzd()Z

    .line 912
    .line 913
    .line 914
    move-result v7

    .line 915
    const/16 v10, 0x10

    .line 916
    .line 917
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 918
    .line 919
    .line 920
    move-result v11

    .line 921
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 922
    .line 923
    .line 924
    move-result v12

    .line 925
    const/16 v15, 0x8

    .line 926
    .line 927
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaev;->zzb(I)I

    .line 928
    .line 929
    .line 930
    move-result v10

    .line 931
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaex;

    .line 932
    .line 933
    invoke-direct {v14, v7, v11, v12, v10}, Lcom/google/android/gms/internal/ads/zzaex;-><init>(ZIII)V

    .line 934
    .line 935
    .line 936
    aput-object v14, v9, v4

    .line 937
    .line 938
    add-int/lit8 v4, v4, 0x1

    .line 939
    .line 940
    goto :goto_21

    .line 941
    :cond_2c
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaev;->zzd()Z

    .line 942
    .line 943
    .line 944
    move-result v3

    .line 945
    if-eqz v3, :cond_2e

    .line 946
    .line 947
    move-object v7, v5

    .line 948
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaka;

    .line 949
    .line 950
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaez;->zza(I)I

    .line 951
    .line 952
    .line 953
    move-result v10

    .line 954
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Lcom/google/android/gms/internal/ads/zzaey;Lcom/google/android/gms/internal/ads/zzaew;[B[Lcom/google/android/gms/internal/ads/zzaex;I)V

    .line 955
    .line 956
    .line 957
    move-object v7, v5

    .line 958
    :goto_22
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzakb;->zza:Lcom/google/android/gms/internal/ads/zzaka;

    .line 959
    .line 960
    if-nez v7, :cond_2d

    .line 961
    .line 962
    const/4 v14, 0x1

    .line 963
    return v14

    .line 964
    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    .line 965
    .line 966
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .line 968
    .line 969
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzaka;->zza:Lcom/google/android/gms/internal/ads/zzaey;

    .line 970
    .line 971
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaey;->zzg:[B

    .line 972
    .line 973
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaka;->zzc:[B

    .line 977
    .line 978
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaka;->zzb:Lcom/google/android/gms/internal/ads/zzaew;

    .line 982
    .line 983
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaew;->zza:[Ljava/lang/String;

    .line 984
    .line 985
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfyc;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 986
    .line 987
    .line 988
    move-result-object v4

    .line 989
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaez;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzav;

    .line 990
    .line 991
    .line 992
    move-result-object v4

    .line 993
    new-instance v5, Lcom/google/android/gms/internal/ads/zzx;

    .line 994
    .line 995
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 996
    .line 997
    .line 998
    const-string v6, "audio/ogg"

    .line 999
    .line 1000
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1001
    .line 1002
    .line 1003
    const-string v6, "audio/vorbis"

    .line 1004
    .line 1005
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1006
    .line 1007
    .line 1008
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaey;->zzd:I

    .line 1009
    .line 1010
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1011
    .line 1012
    .line 1013
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaey;->zzc:I

    .line 1014
    .line 1015
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1016
    .line 1017
    .line 1018
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaey;->zza:I

    .line 1019
    .line 1020
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1021
    .line 1022
    .line 1023
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaey;->zzb:I

    .line 1024
    .line 1025
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 1039
    .line 1040
    const/4 v14, 0x1

    .line 1041
    return v14

    .line 1042
    :cond_2e
    const-string v1, "framing bit after modes not set as expected"

    .line 1043
    .line 1044
    const/4 v2, 0x0

    .line 1045
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    throw v1
.end method

.method public final zzi(J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajz;->zzi(J)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, p2

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzc:Z

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzd:Lcom/google/android/gms/internal/ads/zzaey;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzaey;->zze:I

    .line 21
    .line 22
    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzakb;->zzb:I

    .line 23
    .line 24
    return-void
.end method
