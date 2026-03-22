.class abstract Lcom/google/android/gms/internal/ads/zzhbr;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final zzc(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
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
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    sub-int/2addr v4, p1

    .line 10
    or-int v5, p1, p2

    .line 11
    .line 12
    sub-int/2addr v4, p2

    .line 13
    or-int/2addr v4, v5

    .line 14
    if-ltz v4, :cond_9

    .line 15
    .line 16
    add-int v4, p1, p2

    .line 17
    .line 18
    new-array v9, p2, [C

    .line 19
    .line 20
    move p2, v0

    .line 21
    :goto_0
    if-ge p1, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhbq;->zzd(B)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    add-int/2addr p1, v3

    .line 34
    add-int/lit8 v6, p2, 0x1

    .line 35
    .line 36
    int-to-char v5, v5

    .line 37
    aput-char v5, v9, p2

    .line 38
    .line 39
    move p2, v6

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v10, p2

    .line 42
    :cond_1
    :goto_1
    if-ge p1, v4, :cond_8

    .line 43
    .line 44
    add-int/lit8 p2, p1, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhbq;->zzd(B)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    add-int/lit8 p1, v10, 0x1

    .line 57
    .line 58
    int-to-char v5, v5

    .line 59
    aput-char v5, v9, v10

    .line 60
    .line 61
    move v10, p1

    .line 62
    move p1, p2

    .line 63
    :goto_2
    if-ge p1, v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhbq;->zzd(B)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    add-int/2addr p1, v3

    .line 76
    add-int/lit8 v5, v10, 0x1

    .line 77
    .line 78
    int-to-char p2, p2

    .line 79
    aput-char p2, v9, v10

    .line 80
    .line 81
    move v10, v5

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhbq;->zzf(B)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    const-string v7, "Protocol message had invalid UTF-8."

    .line 88
    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    if-ge p2, v4, :cond_3

    .line 92
    .line 93
    add-int/lit8 v6, v10, 0x1

    .line 94
    .line 95
    add-int/2addr p1, v2

    .line 96
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-static {v5, p2, v9, v10}, Lcom/google/android/gms/internal/ads/zzhbq;->zzc(BB[CI)V

    .line 101
    .line 102
    .line 103
    :goto_3
    move v10, v6

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzh;

    .line 106
    .line 107
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhbq;->zze(B)Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    add-int/lit8 v6, v4, -0x1

    .line 118
    .line 119
    if-ge p2, v6, :cond_5

    .line 120
    .line 121
    add-int/lit8 v6, v10, 0x1

    .line 122
    .line 123
    add-int/lit8 v7, p1, 0x2

    .line 124
    .line 125
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    add-int/2addr p1, v1

    .line 130
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-static {v5, p2, v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzhbq;->zzb(BBB[CI)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzh;

    .line 139
    .line 140
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_6
    add-int/lit8 v6, v4, -0x2

    .line 145
    .line 146
    if-ge p2, v6, :cond_7

    .line 147
    .line 148
    add-int/lit8 v6, p1, 0x2

    .line 149
    .line 150
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    add-int/lit8 v7, p1, 0x3

    .line 155
    .line 156
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    add-int/lit8 p1, p1, 0x4

    .line 161
    .line 162
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    move v7, v6

    .line 167
    move v6, p2

    .line 168
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhbq;->zza(BBBB[CI)V

    .line 169
    .line 170
    .line 171
    add-int/2addr v10, v2

    .line 172
    goto/16 :goto_1

    .line 173
    .line 174
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgzh;

    .line 175
    .line 176
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzgzh;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_8
    new-instance p0, Ljava/lang/String;

    .line 181
    .line 182
    invoke-direct {p0, v9, v0, v10}, Ljava/lang/String;-><init>([CII)V

    .line 183
    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    new-array v1, v1, [Ljava/lang/Object;

    .line 205
    .line 206
    aput-object p0, v1, v0

    .line 207
    .line 208
    aput-object p1, v1, v3

    .line 209
    .line 210
    aput-object p2, v1, v2

    .line 211
    .line 212
    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    .line 213
    .line 214
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-direct {v4, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v4
.end method


# virtual methods
.method public abstract zza(I[BII)I
.end method

.method public abstract zzb([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgzh;
        }
    .end annotation
.end method
