.class public final Lcom/google/android/gms/internal/ads/zzid;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:J

.field private zzm:J

.field private zzn:J


# direct methods
.method public synthetic constructor <init>(FFJFJJFLcom/google/android/gms/internal/ads/zzic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzid;->zza:J

    .line 5
    .line 6
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:J

    .line 7
    .line 8
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzc:J

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzd:J

    .line 16
    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzf:J

    .line 18
    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzg:J

    .line 20
    .line 21
    const p3, 0x3f7851ec    # 0.97f

    .line 22
    .line 23
    .line 24
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzid;->zzj:F

    .line 25
    .line 26
    const p3, 0x3f83d70a    # 1.03f

    .line 27
    .line 28
    .line 29
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzid;->zzi:F

    .line 30
    .line 31
    const/high16 p3, 0x3f800000    # 1.0f

    .line 32
    .line 33
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzid;->zzk:F

    .line 34
    .line 35
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzl:J

    .line 36
    .line 37
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zze:J

    .line 38
    .line 39
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 40
    .line 41
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzm:J

    .line 42
    .line 43
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzn:J

    .line 44
    .line 45
    return-void
.end method

.method private static zzf(JJF)J
    .locals 0

    .line 1
    long-to-float p0, p0

    .line 2
    long-to-float p1, p2

    .line 3
    const p2, 0x3f7fbe77    # 0.999f

    .line 4
    .line 5
    .line 6
    mul-float/2addr p0, p2

    .line 7
    const p2, 0x3a831200    # 9.999871E-4f

    .line 8
    .line 9
    .line 10
    mul-float/2addr p1, p2

    .line 11
    add-float/2addr p0, p1

    .line 12
    float-to-long p0, p0

    .line 13
    return-wide p0
.end method

.method private final zzg()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzc:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_2

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zzd:J

    .line 13
    .line 14
    cmp-long v6, v4, v2

    .line 15
    .line 16
    if-nez v6, :cond_3

    .line 17
    .line 18
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zzf:J

    .line 19
    .line 20
    cmp-long v6, v4, v2

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    cmp-long v6, v0, v4

    .line 25
    .line 26
    if-gez v6, :cond_0

    .line 27
    .line 28
    move-wide v0, v4

    .line 29
    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zzg:J

    .line 30
    .line 31
    cmp-long v6, v4, v2

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    cmp-long v6, v0, v4

    .line 36
    .line 37
    if-lez v6, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-wide v4, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-wide v4, v2

    .line 43
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zze:J

    .line 44
    .line 45
    cmp-long v0, v0, v4

    .line 46
    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zze:J

    .line 51
    .line 52
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 53
    .line 54
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzm:J

    .line 55
    .line 56
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzn:J

    .line 57
    .line 58
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzl:J

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final zza(JJ)F
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzid;->zzc:J

    .line 6
    .line 7
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v4, v4, v6

    .line 13
    .line 14
    const/high16 v5, 0x3f800000    # 1.0f

    .line 15
    .line 16
    if-eqz v4, :cond_8

    .line 17
    .line 18
    sub-long v8, p1, p3

    .line 19
    .line 20
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzid;->zzm:J

    .line 21
    .line 22
    cmp-long v4, v10, v6

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzid;->zzm:J

    .line 27
    .line 28
    const-wide/16 v8, 0x0

    .line 29
    .line 30
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzid;->zzn:J

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const v4, 0x3f7fbe77    # 0.999f

    .line 34
    .line 35
    .line 36
    invoke-static {v10, v11, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzid;->zzf(JJF)J

    .line 37
    .line 38
    .line 39
    move-result-wide v10

    .line 40
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v10

    .line 44
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzid;->zzm:J

    .line 45
    .line 46
    sub-long/2addr v8, v10

    .line 47
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzid;->zzn:J

    .line 52
    .line 53
    invoke-static {v10, v11, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzid;->zzf(JJF)J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzid;->zzn:J

    .line 58
    .line 59
    :goto_0
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzid;->zzl:J

    .line 60
    .line 61
    cmp-long v4, v8, v6

    .line 62
    .line 63
    const-wide/16 v8, 0x3e8

    .line 64
    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v10

    .line 71
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzid;->zzl:J

    .line 72
    .line 73
    sub-long/2addr v10, v12

    .line 74
    cmp-long v4, v10, v8

    .line 75
    .line 76
    if-ltz v4, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzid;->zzk:F

    .line 80
    .line 81
    return v1

    .line 82
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzid;->zzl:J

    .line 87
    .line 88
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzid;->zzm:J

    .line 89
    .line 90
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzid;->zzn:J

    .line 91
    .line 92
    const-wide/16 v14, 0x3

    .line 93
    .line 94
    mul-long/2addr v12, v14

    .line 95
    add-long/2addr v10, v12

    .line 96
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 97
    .line 98
    cmp-long v4, v12, v10

    .line 99
    .line 100
    const/high16 v13, -0x40800000    # -1.0f

    .line 101
    .line 102
    if-lez v4, :cond_5

    .line 103
    .line 104
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzid;->zzk:F

    .line 109
    .line 110
    add-float/2addr v4, v13

    .line 111
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzid;->zzi:F

    .line 112
    .line 113
    add-float/2addr v8, v13

    .line 114
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzid;->zze:J

    .line 115
    .line 116
    move/from16 p3, v4

    .line 117
    .line 118
    const/4 v9, 0x1

    .line 119
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 120
    .line 121
    long-to-float v6, v6

    .line 122
    mul-float/2addr v8, v6

    .line 123
    mul-float v6, v6, p3

    .line 124
    .line 125
    float-to-long v6, v6

    .line 126
    move-wide/from16 v16, v13

    .line 127
    .line 128
    const p3, 0x33d6bf95    # 1.0E-7f

    .line 129
    .line 130
    .line 131
    float-to-long v12, v8

    .line 132
    add-long/2addr v6, v12

    .line 133
    sub-long/2addr v3, v6

    .line 134
    new-array v6, v2, [J

    .line 135
    .line 136
    aput-wide v10, v6, v1

    .line 137
    .line 138
    aput-wide v16, v6, v9

    .line 139
    .line 140
    const/4 v7, 0x2

    .line 141
    aput-wide v3, v6, v7

    .line 142
    .line 143
    aget-wide v3, v6, v1

    .line 144
    .line 145
    move v1, v9

    .line 146
    :goto_2
    if-ge v1, v2, :cond_4

    .line 147
    .line 148
    aget-wide v7, v6, v1

    .line 149
    .line 150
    cmp-long v10, v7, v3

    .line 151
    .line 152
    if-gtz v10, :cond_3

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    move-wide v3, v7

    .line 156
    :goto_3
    add-int/2addr v1, v9

    .line 157
    goto :goto_2

    .line 158
    :cond_4
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_5
    const p3, 0x33d6bf95    # 1.0E-7f

    .line 162
    .line 163
    .line 164
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzid;->zzk:F

    .line 165
    .line 166
    add-float/2addr v1, v13

    .line 167
    const/4 v2, 0x0

    .line 168
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    div-float v1, v1, p3

    .line 173
    .line 174
    float-to-long v1, v1

    .line 175
    sub-long v1, p1, v1

    .line 176
    .line 177
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 178
    .line 179
    sget-object v8, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 186
    .line 187
    .line 188
    move-result-wide v3

    .line 189
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 190
    .line 191
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzid;->zzg:J

    .line 192
    .line 193
    cmp-long v6, v1, v6

    .line 194
    .line 195
    if-eqz v6, :cond_6

    .line 196
    .line 197
    cmp-long v6, v3, v1

    .line 198
    .line 199
    if-lez v6, :cond_6

    .line 200
    .line 201
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 202
    .line 203
    move-wide v3, v1

    .line 204
    :cond_6
    :goto_4
    sub-long v1, p1, v3

    .line 205
    .line 206
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzid;->zza:J

    .line 207
    .line 208
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    cmp-long v3, v6, v3

    .line 213
    .line 214
    if-gez v3, :cond_7

    .line 215
    .line 216
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzid;->zzk:F

    .line 217
    .line 218
    return v5

    .line 219
    :cond_7
    long-to-float v1, v1

    .line 220
    mul-float v1, v1, p3

    .line 221
    .line 222
    add-float/2addr v1, v5

    .line 223
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzid;->zzj:F

    .line 224
    .line 225
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzid;->zzi:F

    .line 226
    .line 227
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzid;->zzk:F

    .line 236
    .line 237
    return v1

    .line 238
    :cond_8
    return v5
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zzc()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:J

    .line 14
    .line 15
    add-long/2addr v0, v4

    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 17
    .line 18
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zzg:J

    .line 19
    .line 20
    cmp-long v6, v4, v2

    .line 21
    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    cmp-long v0, v0, v4

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzid;->zzh:J

    .line 29
    .line 30
    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzl:J

    .line 31
    .line 32
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaj;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaj;->zza:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzc:J

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzf:J

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzid;->zzg:J

    .line 25
    .line 26
    const p1, 0x3f7851ec    # 0.97f

    .line 27
    .line 28
    .line 29
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzj:F

    .line 30
    .line 31
    const p1, 0x3f83d70a    # 1.03f

    .line 32
    .line 33
    .line 34
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzi:F

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzid;->zzg()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zze(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzd:J

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzid;->zzg()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
