.class final Lcom/google/android/gms/internal/ads/zzhbs;
.super Lcom/google/android/gms/internal/ads/zzhbr;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhbr;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zza(I[BII)I
    .locals 11

    .line 1
    const/16 v0, -0x13

    .line 2
    .line 3
    const/16 v1, -0x10

    .line 4
    .line 5
    const/16 v2, -0x3e

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, -0x60

    .line 9
    .line 10
    const/16 v5, -0x20

    .line 11
    .line 12
    const/16 v6, -0x41

    .line 13
    .line 14
    const/4 v7, -0x1

    .line 15
    if-eqz p1, :cond_e

    .line 16
    .line 17
    if-lt p3, p4, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    int-to-byte v8, p1

    .line 21
    if-ge v8, v5, :cond_2

    .line 22
    .line 23
    if-lt v8, v2, :cond_1

    .line 24
    .line 25
    add-int/lit8 p1, p3, 0x1

    .line 26
    .line 27
    aget-byte p3, p2, p3

    .line 28
    .line 29
    if-gt p3, v6, :cond_1

    .line 30
    .line 31
    :goto_0
    move p3, p1

    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_1
    return v7

    .line 35
    :cond_2
    shr-int/lit8 v9, p1, 0x8

    .line 36
    .line 37
    not-int v9, v9

    .line 38
    if-ge v8, v1, :cond_8

    .line 39
    .line 40
    int-to-byte p1, v9

    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    add-int/lit8 p1, p3, 0x1

    .line 44
    .line 45
    aget-byte p3, p2, p3

    .line 46
    .line 47
    if-ge p1, p4, :cond_3

    .line 48
    .line 49
    move v10, p3

    .line 50
    move p3, p1

    .line 51
    move p1, v10

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-static {v8, p3}, Lcom/google/android/gms/internal/ads/zzhbu;->zza(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_4
    :goto_1
    if-gt p1, v6, :cond_7

    .line 59
    .line 60
    if-ne v8, v5, :cond_5

    .line 61
    .line 62
    if-lt p1, v4, :cond_7

    .line 63
    .line 64
    :cond_5
    if-ne v8, v0, :cond_6

    .line 65
    .line 66
    if-ge p1, v4, :cond_7

    .line 67
    .line 68
    :cond_6
    add-int/lit8 p1, p3, 0x1

    .line 69
    .line 70
    aget-byte p3, p2, p3

    .line 71
    .line 72
    if-gt p3, v6, :cond_7

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_7
    return v7

    .line 76
    :cond_8
    int-to-byte v9, v9

    .line 77
    if-nez v9, :cond_a

    .line 78
    .line 79
    add-int/lit8 p1, p3, 0x1

    .line 80
    .line 81
    aget-byte v9, p2, p3

    .line 82
    .line 83
    if-ge p1, p4, :cond_9

    .line 84
    .line 85
    move p3, p1

    .line 86
    move p1, v3

    .line 87
    goto :goto_2

    .line 88
    :cond_9
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzhbu;->zza(II)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_a
    shr-int/lit8 p1, p1, 0x10

    .line 94
    .line 95
    :goto_2
    if-nez p1, :cond_c

    .line 96
    .line 97
    add-int/lit8 p1, p3, 0x1

    .line 98
    .line 99
    aget-byte p3, p2, p3

    .line 100
    .line 101
    if-ge p1, p4, :cond_b

    .line 102
    .line 103
    move v10, p3

    .line 104
    move p3, p1

    .line 105
    move p1, v10

    .line 106
    goto :goto_3

    .line 107
    :cond_b
    invoke-static {v8, v9, p3}, Lcom/google/android/gms/internal/ads/zzhbu;->zzb(III)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    return p1

    .line 112
    :cond_c
    :goto_3
    if-gt v9, v6, :cond_d

    .line 113
    .line 114
    shl-int/lit8 v8, v8, 0x1c

    .line 115
    .line 116
    add-int/lit8 v9, v9, 0x70

    .line 117
    .line 118
    add-int/2addr v8, v9

    .line 119
    shr-int/lit8 v8, v8, 0x1e

    .line 120
    .line 121
    if-nez v8, :cond_d

    .line 122
    .line 123
    if-gt p1, v6, :cond_d

    .line 124
    .line 125
    add-int/lit8 p1, p3, 0x1

    .line 126
    .line 127
    aget-byte p3, p2, p3

    .line 128
    .line 129
    if-gt p3, v6, :cond_d

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_d
    return v7

    .line 133
    :cond_e
    :goto_4
    if-ge p3, p4, :cond_f

    .line 134
    .line 135
    aget-byte p1, p2, p3

    .line 136
    .line 137
    if-ltz p1, :cond_f

    .line 138
    .line 139
    add-int/lit8 p3, p3, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_f
    if-lt p3, p4, :cond_10

    .line 143
    .line 144
    return v3

    .line 145
    :cond_10
    :goto_5
    if-lt p3, p4, :cond_11

    .line 146
    .line 147
    return v3

    .line 148
    :cond_11
    add-int/lit8 p1, p3, 0x1

    .line 149
    .line 150
    aget-byte v8, p2, p3

    .line 151
    .line 152
    if-gez v8, :cond_1e

    .line 153
    .line 154
    if-ge v8, v5, :cond_14

    .line 155
    .line 156
    if-lt p1, p4, :cond_12

    .line 157
    .line 158
    return v8

    .line 159
    :cond_12
    if-lt v8, v2, :cond_13

    .line 160
    .line 161
    add-int/lit8 p3, p3, 0x2

    .line 162
    .line 163
    aget-byte p1, p2, p1

    .line 164
    .line 165
    if-le p1, v6, :cond_10

    .line 166
    .line 167
    :cond_13
    return v7

    .line 168
    :cond_14
    if-ge v8, v1, :cond_1b

    .line 169
    .line 170
    add-int/lit8 v9, p4, -0x1

    .line 171
    .line 172
    if-lt p1, v9, :cond_15

    .line 173
    .line 174
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzhbu;->zzc([BII)I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    return p1

    .line 179
    :cond_15
    add-int/lit8 v9, p3, 0x2

    .line 180
    .line 181
    aget-byte p1, p2, p1

    .line 182
    .line 183
    if-gt p1, v6, :cond_1a

    .line 184
    .line 185
    if-ne v8, v5, :cond_17

    .line 186
    .line 187
    if-lt p1, v4, :cond_16

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_16
    return v7

    .line 191
    :cond_17
    :goto_6
    if-ne v8, v0, :cond_19

    .line 192
    .line 193
    if-ge p1, v4, :cond_18

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_18
    return v7

    .line 197
    :cond_19
    :goto_7
    add-int/lit8 p3, p3, 0x3

    .line 198
    .line 199
    aget-byte p1, p2, v9

    .line 200
    .line 201
    if-le p1, v6, :cond_10

    .line 202
    .line 203
    :cond_1a
    return v7

    .line 204
    :cond_1b
    add-int/lit8 v9, p4, -0x2

    .line 205
    .line 206
    if-lt p1, v9, :cond_1c

    .line 207
    .line 208
    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzhbu;->zzc([BII)I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    return p1

    .line 213
    :cond_1c
    add-int/lit8 v9, p3, 0x2

    .line 214
    .line 215
    aget-byte p1, p2, p1

    .line 216
    .line 217
    if-gt p1, v6, :cond_1d

    .line 218
    .line 219
    shl-int/lit8 v8, v8, 0x1c

    .line 220
    .line 221
    add-int/lit8 p1, p1, 0x70

    .line 222
    .line 223
    add-int/2addr v8, p1

    .line 224
    shr-int/lit8 p1, v8, 0x1e

    .line 225
    .line 226
    if-nez p1, :cond_1d

    .line 227
    .line 228
    add-int/lit8 p1, p3, 0x3

    .line 229
    .line 230
    aget-byte v8, p2, v9

    .line 231
    .line 232
    if-gt v8, v6, :cond_1d

    .line 233
    .line 234
    add-int/lit8 p3, p3, 0x4

    .line 235
    .line 236
    aget-byte p1, p2, p1

    .line 237
    .line 238
    if-le p1, v6, :cond_10

    .line 239
    .line 240
    :cond_1d
    return v7

    .line 241
    :cond_1e
    move p3, p1

    .line 242
    goto :goto_5
.end method

.method public final zzb([BII)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzh;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    array-length v4, p1

    .line 6
    sub-int v5, v4, p2

    .line 7
    .line 8
    or-int v6, p2, p3

    .line 9
    .line 10
    sub-int/2addr v5, p3

    .line 11
    or-int/2addr v5, v6

    .line 12
    if-ltz v5, :cond_9

    .line 13
    .line 14
    add-int v4, p2, p3

    .line 15
    .line 16
    new-array v9, p3, [C

    .line 17
    .line 18
    move p3, v0

    .line 19
    :goto_0
    if-ge p2, v4, :cond_0

    .line 20
    .line 21
    aget-byte v5, p1, p2

    .line 22
    .line 23
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhbq;->zzd(B)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    add-int/2addr p2, v3

    .line 30
    add-int/lit8 v6, p3, 0x1

    .line 31
    .line 32
    int-to-char v5, v5

    .line 33
    aput-char v5, v9, p3

    .line 34
    .line 35
    move p3, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v10, p3

    .line 38
    :cond_1
    :goto_1
    if-ge p2, v4, :cond_8

    .line 39
    .line 40
    add-int/lit8 p3, p2, 0x1

    .line 41
    .line 42
    aget-byte v5, p1, p2

    .line 43
    .line 44
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhbq;->zzd(B)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    add-int/lit8 p2, v10, 0x1

    .line 51
    .line 52
    int-to-char v5, v5

    .line 53
    aput-char v5, v9, v10

    .line 54
    .line 55
    move v10, p2

    .line 56
    move p2, p3

    .line 57
    :goto_2
    if-ge p2, v4, :cond_1

    .line 58
    .line 59
    aget-byte p3, p1, p2

    .line 60
    .line 61
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhbq;->zzd(B)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    add-int/2addr p2, v3

    .line 68
    add-int/lit8 v5, v10, 0x1

    .line 69
    .line 70
    int-to-char p3, p3

    .line 71
    aput-char p3, v9, v10

    .line 72
    .line 73
    move v10, v5

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhbq;->zzf(B)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const-string v7, "Protocol message had invalid UTF-8."

    .line 80
    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    if-ge p3, v4, :cond_3

    .line 84
    .line 85
    add-int/lit8 v6, v10, 0x1

    .line 86
    .line 87
    add-int/2addr p2, v2

    .line 88
    aget-byte p3, p1, p3

    .line 89
    .line 90
    invoke-static {v5, p3, v9, v10}, Lcom/google/android/gms/internal/ads/zzhbq;->zzc(BB[CI)V

    .line 91
    .line 92
    .line 93
    :goto_3
    move v10, v6

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzh;

    .line 96
    .line 97
    invoke-direct {p1, v7}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhbq;->zze(B)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_6

    .line 106
    .line 107
    add-int/lit8 v6, v4, -0x1

    .line 108
    .line 109
    if-ge p3, v6, :cond_5

    .line 110
    .line 111
    add-int/lit8 v6, v10, 0x1

    .line 112
    .line 113
    add-int/lit8 v7, p2, 0x2

    .line 114
    .line 115
    aget-byte p3, p1, p3

    .line 116
    .line 117
    add-int/2addr p2, v1

    .line 118
    aget-byte v7, p1, v7

    .line 119
    .line 120
    invoke-static {v5, p3, v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzhbq;->zzb(BBB[CI)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzh;

    .line 125
    .line 126
    invoke-direct {p1, v7}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_6
    add-int/lit8 v6, v4, -0x2

    .line 131
    .line 132
    if-ge p3, v6, :cond_7

    .line 133
    .line 134
    add-int/lit8 v6, p2, 0x2

    .line 135
    .line 136
    aget-byte p3, p1, p3

    .line 137
    .line 138
    add-int/lit8 v7, p2, 0x3

    .line 139
    .line 140
    aget-byte v6, p1, v6

    .line 141
    .line 142
    add-int/lit8 p2, p2, 0x4

    .line 143
    .line 144
    aget-byte v8, p1, v7

    .line 145
    .line 146
    move v7, v6

    .line 147
    move v6, p3

    .line 148
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhbq;->zza(BBBB[CI)V

    .line 149
    .line 150
    .line 151
    add-int/2addr v10, v2

    .line 152
    goto :goto_1

    .line 153
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzh;

    .line 154
    .line 155
    invoke-direct {p1, v7}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_8
    new-instance p1, Ljava/lang/String;

    .line 160
    .line 161
    invoke-direct {p1, v9, v0, v10}, Ljava/lang/String;-><init>([CII)V

    .line 162
    .line 163
    .line 164
    return-object p1

    .line 165
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 166
    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    new-array v1, v1, [Ljava/lang/Object;

    .line 180
    .line 181
    aput-object v4, v1, v0

    .line 182
    .line 183
    aput-object p2, v1, v3

    .line 184
    .line 185
    aput-object p3, v1, v2

    .line 186
    .line 187
    const-string p2, "buffer length=%d, index=%d, size=%d"

    .line 188
    .line 189
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1
.end method
