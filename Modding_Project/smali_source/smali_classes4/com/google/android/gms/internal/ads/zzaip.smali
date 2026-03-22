.class public final Lcom/google/android/gms/internal/ads/zzaip;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "OpusHead"

    .line 4
    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaip;->zzb:[B

    .line 12
    .line 13
    return-void
.end method

.method public static zza(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzez;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_7

    .line 24
    .line 25
    if-eqz v1, :cond_7

    .line 26
    .line 27
    if-eqz p0, :cond_7

    .line 28
    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaip;->zzi(Lcom/google/android/gms/internal/ads/zzek;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0x6d647461

    .line 36
    .line 37
    .line 38
    if-eq v0, v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    new-array v3, v1, [Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    move v5, v4

    .line 57
    :goto_0
    if-ge v5, v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x4

    .line 64
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v6, v6, -0x8

    .line 68
    .line 69
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    aput-object v6, v3, v5

    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 81
    .line 82
    const/16 v0, 0x8

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-le v6, v0, :cond_6

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    add-int/2addr v6, v7

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    add-int/lit8 v7, v7, -0x1

    .line 112
    .line 113
    if-ltz v7, :cond_4

    .line 114
    .line 115
    if-ge v7, v1, :cond_4

    .line 116
    .line 117
    aget-object v7, v3, v7

    .line 118
    .line 119
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-ge v8, v6, :cond_3

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    const v11, 0x64617461

    .line 134
    .line 135
    .line 136
    if-ne v10, v11, :cond_2

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    add-int/lit8 v9, v9, -0x10

    .line 147
    .line 148
    new-array v11, v9, [B

    .line 149
    .line 150
    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 151
    .line 152
    .line 153
    new-instance v9, Lcom/google/android/gms/internal/ads/zzex;

    .line 154
    .line 155
    invoke-direct {v9, v7, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzex;-><init>(Ljava/lang/String;[BII)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_2
    add-int/2addr v8, v9

    .line 160
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    move-object v9, v2

    .line 165
    :goto_3
    if-eqz v9, :cond_5

    .line 166
    .line 167
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v9, "Skipped metadata with unknown key index: "

    .line 177
    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    const-string v8, "BoxParsers"

    .line 189
    .line 190
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    :goto_4
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    if-nez p0, :cond_7

    .line 202
    .line 203
    new-instance p0, Lcom/google/android/gms/internal/ads/zzav;

    .line 204
    .line 205
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    return-object p0

    .line 209
    :cond_7
    :goto_5
    return-object v2
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfa;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzav;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzau;

    .line 13
    .line 14
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-lt v4, v1, :cond_15

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    add-int/2addr v7, v4

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const v9, 0x6d657461

    .line 42
    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    if-ne v8, v9, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaip;->zzg(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ge v4, v7, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    add-int/2addr v8, v4

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const v11, 0x696c7374

    .line 76
    .line 77
    .line 78
    if-ne v9, v11, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 84
    .line 85
    .line 86
    new-instance v4, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-ge v9, v8, :cond_1

    .line 96
    .line 97
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zza(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzau;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    if-eqz v9, :cond_0

    .line 102
    .line 103
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_2

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    new-instance v10, Lcom/google/android/gms/internal/ads/zzav;

    .line 115
    .line 116
    invoke-direct {v10, v4}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    :goto_3
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    goto/16 :goto_a

    .line 129
    .line 130
    :cond_5
    const v9, 0x736d7461

    .line 131
    .line 132
    .line 133
    if-ne v8, v9, :cond_13

    .line 134
    .line 135
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 136
    .line 137
    .line 138
    const/16 v4, 0xc

    .line 139
    .line 140
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 141
    .line 142
    .line 143
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-ge v8, v7, :cond_12

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    const v12, 0x73617574

    .line 162
    .line 163
    .line 164
    if-ne v11, v12, :cond_11

    .line 165
    .line 166
    const/16 v8, 0x10

    .line 167
    .line 168
    if-ge v9, v8, :cond_6

    .line 169
    .line 170
    goto/16 :goto_9

    .line 171
    .line 172
    :cond_6
    const/4 v8, 0x4

    .line 173
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 174
    .line 175
    .line 176
    const/4 v8, -0x1

    .line 177
    move v9, v3

    .line 178
    move v11, v9

    .line 179
    :goto_5
    const/4 v12, 0x2

    .line 180
    if-ge v9, v12, :cond_9

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 183
    .line 184
    .line 185
    move-result v12

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    if-nez v12, :cond_7

    .line 191
    .line 192
    move v8, v13

    .line 193
    goto :goto_6

    .line 194
    :cond_7
    if-ne v12, v0, :cond_8

    .line 195
    .line 196
    move v11, v13

    .line 197
    :cond_8
    :goto_6
    add-int/2addr v9, v0

    .line 198
    goto :goto_5

    .line 199
    :cond_9
    const v9, -0x7fffffff

    .line 200
    .line 201
    .line 202
    if-ne v8, v4, :cond_a

    .line 203
    .line 204
    const/16 v4, 0xf0

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_a
    const/16 v12, 0xd

    .line 208
    .line 209
    if-ne v8, v12, :cond_b

    .line 210
    .line 211
    const/16 v4, 0x78

    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_b
    const/16 v12, 0x15

    .line 215
    .line 216
    if-eq v8, v12, :cond_d

    .line 217
    .line 218
    :cond_c
    :goto_7
    move v4, v9

    .line 219
    goto :goto_8

    .line 220
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-lt v8, v1, :cond_c

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    add-int/2addr v8, v1

    .line 231
    if-le v8, v7, :cond_e

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    if-lt v8, v4, :cond_c

    .line 243
    .line 244
    const v4, 0x73726672

    .line 245
    .line 246
    .line 247
    if-eq v12, v4, :cond_f

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzn()I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    :goto_8
    if-ne v4, v9, :cond_10

    .line 255
    .line 256
    goto :goto_9

    .line 257
    :cond_10
    new-instance v10, Lcom/google/android/gms/internal/ads/zzav;

    .line 258
    .line 259
    new-instance v8, Lcom/google/android/gms/internal/ads/zzahh;

    .line 260
    .line 261
    int-to-float v4, v4

    .line 262
    invoke-direct {v8, v4, v11}, Lcom/google/android/gms/internal/ads/zzahh;-><init>(FI)V

    .line 263
    .line 264
    .line 265
    new-array v4, v0, [Lcom/google/android/gms/internal/ads/zzau;

    .line 266
    .line 267
    aput-object v8, v4, v3

    .line 268
    .line 269
    invoke-direct {v10, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_11
    add-int/2addr v8, v9

    .line 274
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_4

    .line 278
    .line 279
    :cond_12
    :goto_9
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    goto :goto_a

    .line 284
    :cond_13
    const v4, -0x56878686

    .line 285
    .line 286
    .line 287
    if-ne v8, v4, :cond_14

    .line 288
    .line 289
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaip;->zzl(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzav;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    :cond_14
    :goto_a
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_15
    return-object v2
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzfe;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :goto_0
    move-wide v5, v0

    .line 25
    move-wide v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfe;

    .line 41
    .line 42
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzfe;-><init>(JJJ)V

    .line 43
    .line 44
    .line 45
    return-object v4
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzez;Lcom/google/android/gms/internal/ads/zzaeb;)Lcom/google/android/gms/internal/ads/zzajk;
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const v5, 0x7374737a

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 18
    .line 19
    new-instance v8, Lcom/google/android/gms/internal/ads/zzail;

    .line 20
    .line 21
    invoke-direct {v8, v5, v7}, Lcom/google/android/gms/internal/ads/zzail;-><init>(Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzz;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v5, 0x73747a32

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_45

    .line 33
    .line 34
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaim;

    .line 35
    .line 36
    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Lcom/google/android/gms/internal/ads/zzfa;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaii;->zzb()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v7, 0x0

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajk;

    .line 47
    .line 48
    new-array v2, v7, [J

    .line 49
    .line 50
    new-array v3, v7, [I

    .line 51
    .line 52
    new-array v5, v7, [J

    .line 53
    .line 54
    new-array v6, v7, [I

    .line 55
    .line 56
    const-wide/16 v7, 0x0

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(Lcom/google/android/gms/internal/ads/zzajh;[J[II[J[IJ)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_1
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    .line 64
    .line 65
    const/4 v10, 0x2

    .line 66
    const-wide/16 v11, 0x0

    .line 67
    .line 68
    if-ne v9, v10, :cond_2

    .line 69
    .line 70
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzf:J

    .line 71
    .line 72
    cmp-long v9, v13, v11

    .line 73
    .line 74
    if-lez v9, :cond_2

    .line 75
    .line 76
    int-to-float v9, v5

    .line 77
    long-to-float v13, v13

    .line 78
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 79
    .line 80
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    const v15, 0x49742400    # 1000000.0f

    .line 85
    .line 86
    .line 87
    div-float/2addr v13, v15

    .line 88
    div-float/2addr v9, v13

    .line 89
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzK(F)Lcom/google/android/gms/internal/ads/zzx;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzajh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajh;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_2
    const v9, 0x7374636f

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    if-nez v9, :cond_3

    .line 108
    .line 109
    const v9, 0x636f3634

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/4 v13, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move v13, v7

    .line 122
    :goto_1
    const v14, 0x73747363

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 133
    .line 134
    const v15, 0x73747473

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 145
    .line 146
    move-wide/from16 v16, v11

    .line 147
    .line 148
    const v11, 0x73747373

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    if-eqz v11, :cond_4

    .line 156
    .line 157
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    const/4 v11, 0x0

    .line 161
    :goto_2
    const v12, 0x63747473

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-eqz v0, :cond_5

    .line 169
    .line 170
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    const/4 v0, 0x0

    .line 174
    :goto_3
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 175
    .line 176
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaie;

    .line 177
    .line 178
    invoke-direct {v12, v14, v9, v13}, Lcom/google/android/gms/internal/ads/zzaie;-><init>(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzek;Z)V

    .line 179
    .line 180
    .line 181
    const/16 v9, 0xc

    .line 182
    .line 183
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 187
    .line 188
    .line 189
    move-result v13

    .line 190
    add-int/2addr v13, v3

    .line 191
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 205
    .line 206
    .line 207
    move-result v19

    .line 208
    goto :goto_4

    .line 209
    :cond_6
    move/from16 v19, v7

    .line 210
    .line 211
    :goto_4
    if-eqz v11, :cond_8

    .line 212
    .line 213
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-lez v9, :cond_7

    .line 221
    .line 222
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 223
    .line 224
    .line 225
    move-result v18

    .line 226
    add-int/lit8 v18, v18, -0x1

    .line 227
    .line 228
    move/from16 v20, v7

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_7
    move/from16 v18, v3

    .line 232
    .line 233
    move/from16 v20, v7

    .line 234
    .line 235
    const/4 v11, 0x0

    .line 236
    goto :goto_5

    .line 237
    :cond_8
    move/from16 v18, v3

    .line 238
    .line 239
    move v9, v7

    .line 240
    move/from16 v20, v9

    .line 241
    .line 242
    :goto_5
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaii;->zza()I

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 247
    .line 248
    move/from16 v22, v3

    .line 249
    .line 250
    if-eq v7, v3, :cond_f

    .line 251
    .line 252
    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 253
    .line 254
    const/16 v23, 0x1

    .line 255
    .line 256
    const-string v4, "audio/raw"

    .line 257
    .line 258
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-nez v4, :cond_9

    .line 263
    .line 264
    const-string v4, "audio/g711-mlaw"

    .line 265
    .line 266
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-nez v4, :cond_9

    .line 271
    .line 272
    const-string v4, "audio/g711-alaw"

    .line 273
    .line 274
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_10

    .line 279
    .line 280
    :cond_9
    if-nez v13, :cond_10

    .line 281
    .line 282
    if-nez v19, :cond_e

    .line 283
    .line 284
    if-nez v9, :cond_e

    .line 285
    .line 286
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzaie;->zza:I

    .line 287
    .line 288
    new-array v3, v0, [J

    .line 289
    .line 290
    new-array v4, v0, [I

    .line 291
    .line 292
    :goto_6
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaie;->zza()Z

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-eqz v8, :cond_a

    .line 297
    .line 298
    iget v8, v12, Lcom/google/android/gms/internal/ads/zzaie;->zzb:I

    .line 299
    .line 300
    iget-wide v13, v12, Lcom/google/android/gms/internal/ads/zzaie;->zzd:J

    .line 301
    .line 302
    aput-wide v13, v3, v8

    .line 303
    .line 304
    iget v9, v12, Lcom/google/android/gms/internal/ads/zzaie;->zzc:I

    .line 305
    .line 306
    aput v9, v4, v8

    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_a
    int-to-long v8, v6

    .line 310
    const/16 v6, 0x2000

    .line 311
    .line 312
    div-int/2addr v6, v7

    .line 313
    move/from16 v11, v20

    .line 314
    .line 315
    move v12, v11

    .line 316
    :goto_7
    if-ge v11, v0, :cond_b

    .line 317
    .line 318
    aget v13, v4, v11

    .line 319
    .line 320
    sget-object v14, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 321
    .line 322
    add-int/2addr v13, v6

    .line 323
    add-int/lit8 v13, v13, -0x1

    .line 324
    .line 325
    div-int/2addr v13, v6

    .line 326
    add-int/2addr v12, v13

    .line 327
    add-int/lit8 v11, v11, 0x1

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_b
    new-array v11, v12, [J

    .line 331
    .line 332
    new-array v13, v12, [I

    .line 333
    .line 334
    new-array v14, v12, [J

    .line 335
    .line 336
    new-array v12, v12, [I

    .line 337
    .line 338
    move-object/from16 v18, v3

    .line 339
    .line 340
    move-object/from16 v19, v4

    .line 341
    .line 342
    move/from16 v3, v20

    .line 343
    .line 344
    move v4, v3

    .line 345
    move v15, v4

    .line 346
    move/from16 v24, v15

    .line 347
    .line 348
    move/from16 v25, v24

    .line 349
    .line 350
    :goto_8
    if-ge v15, v0, :cond_d

    .line 351
    .line 352
    aget v26, v19, v15

    .line 353
    .line 354
    aget-wide v27, v18, v15

    .line 355
    .line 356
    move/from16 p0, v25

    .line 357
    .line 358
    move/from16 v25, v0

    .line 359
    .line 360
    move/from16 v0, v24

    .line 361
    .line 362
    move/from16 v24, p0

    .line 363
    .line 364
    move/from16 p0, v4

    .line 365
    .line 366
    move/from16 v4, v26

    .line 367
    .line 368
    :goto_9
    if-lez v4, :cond_c

    .line 369
    .line 370
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 371
    .line 372
    .line 373
    move-result v26

    .line 374
    aput-wide v27, v11, v24

    .line 375
    .line 376
    move/from16 p1, v4

    .line 377
    .line 378
    mul-int v4, v7, v26

    .line 379
    .line 380
    aput v4, v13, v24

    .line 381
    .line 382
    add-int v29, p0, v4

    .line 383
    .line 384
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    move/from16 v31, v6

    .line 389
    .line 390
    move/from16 v30, v7

    .line 391
    .line 392
    int-to-long v6, v3

    .line 393
    mul-long/2addr v6, v8

    .line 394
    aput-wide v6, v14, v24

    .line 395
    .line 396
    aput v23, v12, v24

    .line 397
    .line 398
    aget v4, v13, v24

    .line 399
    .line 400
    int-to-long v6, v4

    .line 401
    add-long v27, v27, v6

    .line 402
    .line 403
    add-int v3, v3, v26

    .line 404
    .line 405
    sub-int v4, p1, v26

    .line 406
    .line 407
    add-int/lit8 v24, v24, 0x1

    .line 408
    .line 409
    move/from16 p0, v29

    .line 410
    .line 411
    move/from16 v7, v30

    .line 412
    .line 413
    move/from16 v6, v31

    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_c
    move/from16 v31, v6

    .line 417
    .line 418
    move/from16 v30, v7

    .line 419
    .line 420
    add-int/lit8 v15, v15, 0x1

    .line 421
    .line 422
    move/from16 v4, v24

    .line 423
    .line 424
    move/from16 v24, v0

    .line 425
    .line 426
    move/from16 v0, v25

    .line 427
    .line 428
    move/from16 v25, v4

    .line 429
    .line 430
    move/from16 v4, p0

    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_d
    int-to-long v6, v3

    .line 434
    mul-long/2addr v8, v6

    .line 435
    int-to-long v3, v4

    .line 436
    move-wide v6, v8

    .line 437
    move-object/from16 v26, v10

    .line 438
    .line 439
    move-object/from16 v29, v11

    .line 440
    .line 441
    move-object/from16 v30, v13

    .line 442
    .line 443
    move/from16 v31, v24

    .line 444
    .line 445
    :goto_a
    move-object/from16 v33, v12

    .line 446
    .line 447
    goto/16 :goto_1c

    .line 448
    .line 449
    :cond_e
    move/from16 v13, v20

    .line 450
    .line 451
    goto :goto_b

    .line 452
    :cond_f
    const/16 v23, 0x1

    .line 453
    .line 454
    :cond_10
    :goto_b
    new-array v3, v5, [J

    .line 455
    .line 456
    new-array v4, v5, [I

    .line 457
    .line 458
    new-array v7, v5, [J

    .line 459
    .line 460
    move-object/from16 p0, v0

    .line 461
    .line 462
    new-array v0, v5, [I

    .line 463
    .line 464
    move/from16 p1, v9

    .line 465
    .line 466
    move-object/from16 v26, v10

    .line 467
    .line 468
    move-object/from16 v28, v11

    .line 469
    .line 470
    move/from16 v27, v13

    .line 471
    .line 472
    move-wide/from16 v30, v16

    .line 473
    .line 474
    move-wide/from16 v32, v30

    .line 475
    .line 476
    move-wide/from16 v34, v32

    .line 477
    .line 478
    move/from16 v24, v19

    .line 479
    .line 480
    move/from16 v9, v20

    .line 481
    .line 482
    move v10, v9

    .line 483
    move v11, v10

    .line 484
    move/from16 v25, v11

    .line 485
    .line 486
    move/from16 v29, v25

    .line 487
    .line 488
    move-object/from16 v19, v8

    .line 489
    .line 490
    move/from16 v8, v18

    .line 491
    .line 492
    move/from16 v18, v14

    .line 493
    .line 494
    :goto_c
    const-string v13, "BoxParsers"

    .line 495
    .line 496
    if-ge v9, v5, :cond_1d

    .line 497
    .line 498
    move/from16 v14, v23

    .line 499
    .line 500
    :goto_d
    if-nez v25, :cond_12

    .line 501
    .line 502
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaie;->zza()Z

    .line 503
    .line 504
    .line 505
    move-result v14

    .line 506
    if-eqz v14, :cond_11

    .line 507
    .line 508
    move/from16 v37, v14

    .line 509
    .line 510
    move-object/from16 v36, v15

    .line 511
    .line 512
    iget-wide v14, v12, Lcom/google/android/gms/internal/ads/zzaie;->zzd:J

    .line 513
    .line 514
    move/from16 v38, v5

    .line 515
    .line 516
    iget v5, v12, Lcom/google/android/gms/internal/ads/zzaie;->zzc:I

    .line 517
    .line 518
    move/from16 v25, v5

    .line 519
    .line 520
    move-wide/from16 v30, v14

    .line 521
    .line 522
    move-object/from16 v15, v36

    .line 523
    .line 524
    move/from16 v14, v37

    .line 525
    .line 526
    move/from16 v5, v38

    .line 527
    .line 528
    goto :goto_d

    .line 529
    :cond_11
    move/from16 v38, v5

    .line 530
    .line 531
    move/from16 v37, v14

    .line 532
    .line 533
    move/from16 v5, v20

    .line 534
    .line 535
    :goto_e
    move-object/from16 v36, v15

    .line 536
    .line 537
    goto :goto_f

    .line 538
    :cond_12
    move/from16 v38, v5

    .line 539
    .line 540
    move/from16 v5, v25

    .line 541
    .line 542
    goto :goto_e

    .line 543
    :goto_f
    if-nez v14, :cond_13

    .line 544
    .line 545
    const-string v5, "Unexpected end of chunk data"

    .line 546
    .line 547
    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([II)[I

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([II)[I

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    move-object v14, v5

    .line 567
    move v5, v9

    .line 568
    :goto_10
    move-object v12, v0

    .line 569
    goto/16 :goto_16

    .line 570
    .line 571
    :cond_13
    if-nez p0, :cond_14

    .line 572
    .line 573
    goto :goto_12

    .line 574
    :cond_14
    :goto_11
    if-nez v29, :cond_16

    .line 575
    .line 576
    if-lez v24, :cond_15

    .line 577
    .line 578
    add-int/lit8 v24, v24, -0x1

    .line 579
    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 581
    .line 582
    .line 583
    move-result v29

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 585
    .line 586
    .line 587
    move-result v10

    .line 588
    goto :goto_11

    .line 589
    :cond_15
    move/from16 v29, v20

    .line 590
    .line 591
    :cond_16
    add-int/lit8 v29, v29, -0x1

    .line 592
    .line 593
    :goto_12
    aput-wide v30, v3, v9

    .line 594
    .line 595
    invoke-interface/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzaii;->zzc()I

    .line 596
    .line 597
    .line 598
    move-result v13

    .line 599
    aput v13, v4, v9

    .line 600
    .line 601
    int-to-long v14, v13

    .line 602
    add-long v34, v34, v14

    .line 603
    .line 604
    if-le v13, v11, :cond_17

    .line 605
    .line 606
    move v11, v13

    .line 607
    :cond_17
    int-to-long v13, v10

    .line 608
    add-long v13, v32, v13

    .line 609
    .line 610
    aput-wide v13, v7, v9

    .line 611
    .line 612
    if-nez v28, :cond_18

    .line 613
    .line 614
    move/from16 v13, v23

    .line 615
    .line 616
    goto :goto_13

    .line 617
    :cond_18
    move/from16 v13, v20

    .line 618
    .line 619
    :goto_13
    aput v13, v0, v9

    .line 620
    .line 621
    if-ne v9, v8, :cond_19

    .line 622
    .line 623
    aput v23, v0, v9

    .line 624
    .line 625
    add-int/lit8 v13, p1, -0x1

    .line 626
    .line 627
    if-lez v13, :cond_1a

    .line 628
    .line 629
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    .line 631
    .line 632
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 633
    .line 634
    .line 635
    move-result v8

    .line 636
    add-int/lit8 v8, v8, -0x1

    .line 637
    .line 638
    goto :goto_14

    .line 639
    :cond_19
    move/from16 v13, p1

    .line 640
    .line 641
    :cond_1a
    :goto_14
    int-to-long v14, v6

    .line 642
    add-long v32, v32, v14

    .line 643
    .line 644
    add-int/lit8 v18, v18, -0x1

    .line 645
    .line 646
    if-nez v18, :cond_1c

    .line 647
    .line 648
    if-lez v27, :cond_1b

    .line 649
    .line 650
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 655
    .line 656
    .line 657
    move-result v14

    .line 658
    add-int/lit8 v27, v27, -0x1

    .line 659
    .line 660
    move/from16 v18, v6

    .line 661
    .line 662
    move v6, v14

    .line 663
    goto :goto_15

    .line 664
    :cond_1b
    move/from16 v18, v20

    .line 665
    .line 666
    :cond_1c
    :goto_15
    aget v14, v4, v9

    .line 667
    .line 668
    int-to-long v14, v14

    .line 669
    add-long v30, v30, v14

    .line 670
    .line 671
    add-int/lit8 v25, v5, -0x1

    .line 672
    .line 673
    add-int/lit8 v9, v9, 0x1

    .line 674
    .line 675
    move/from16 p1, v13

    .line 676
    .line 677
    move-object/from16 v15, v36

    .line 678
    .line 679
    move/from16 v5, v38

    .line 680
    .line 681
    goto/16 :goto_c

    .line 682
    .line 683
    :cond_1d
    move/from16 v38, v5

    .line 684
    .line 685
    move-object v14, v7

    .line 686
    goto :goto_10

    .line 687
    :goto_16
    int-to-long v6, v10

    .line 688
    add-long v8, v32, v6

    .line 689
    .line 690
    if-eqz p0, :cond_1f

    .line 691
    .line 692
    :goto_17
    if-lez v24, :cond_1f

    .line 693
    .line 694
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    if-eqz v0, :cond_1e

    .line 699
    .line 700
    move/from16 v0, v20

    .line 701
    .line 702
    goto :goto_18

    .line 703
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 704
    .line 705
    .line 706
    add-int/lit8 v24, v24, -0x1

    .line 707
    .line 708
    goto :goto_17

    .line 709
    :cond_1f
    move/from16 v0, v23

    .line 710
    .line 711
    :goto_18
    if-nez p1, :cond_25

    .line 712
    .line 713
    if-nez v18, :cond_24

    .line 714
    .line 715
    if-nez v25, :cond_23

    .line 716
    .line 717
    if-nez v27, :cond_22

    .line 718
    .line 719
    if-nez v29, :cond_21

    .line 720
    .line 721
    if-nez v0, :cond_20

    .line 722
    .line 723
    move-object/from16 p0, v3

    .line 724
    .line 725
    move-object/from16 p1, v4

    .line 726
    .line 727
    move/from16 v0, v20

    .line 728
    .line 729
    move v3, v0

    .line 730
    move v6, v3

    .line 731
    move v7, v6

    .line 732
    move v10, v7

    .line 733
    move v15, v10

    .line 734
    goto/16 :goto_19

    .line 735
    .line 736
    :cond_20
    move-object/from16 p0, v3

    .line 737
    .line 738
    move-object/from16 p1, v4

    .line 739
    .line 740
    move/from16 v18, v5

    .line 741
    .line 742
    move-wide/from16 v24, v8

    .line 743
    .line 744
    goto/16 :goto_1b

    .line 745
    .line 746
    :cond_21
    move-object/from16 p0, v3

    .line 747
    .line 748
    move-object/from16 p1, v4

    .line 749
    .line 750
    move/from16 v6, v20

    .line 751
    .line 752
    move v7, v6

    .line 753
    move v10, v7

    .line 754
    move/from16 v15, v29

    .line 755
    .line 756
    move v3, v0

    .line 757
    move v0, v10

    .line 758
    goto :goto_19

    .line 759
    :cond_22
    move-object/from16 p0, v3

    .line 760
    .line 761
    move-object/from16 p1, v4

    .line 762
    .line 763
    move/from16 v6, v20

    .line 764
    .line 765
    move v7, v6

    .line 766
    move/from16 v10, v27

    .line 767
    .line 768
    move/from16 v15, v29

    .line 769
    .line 770
    move v3, v0

    .line 771
    move v0, v7

    .line 772
    goto :goto_19

    .line 773
    :cond_23
    move-object/from16 p0, v3

    .line 774
    .line 775
    move-object/from16 p1, v4

    .line 776
    .line 777
    move/from16 v6, v20

    .line 778
    .line 779
    move/from16 v7, v25

    .line 780
    .line 781
    move/from16 v10, v27

    .line 782
    .line 783
    move/from16 v15, v29

    .line 784
    .line 785
    move v3, v0

    .line 786
    move v0, v6

    .line 787
    goto :goto_19

    .line 788
    :cond_24
    move-object/from16 p0, v3

    .line 789
    .line 790
    move-object/from16 p1, v4

    .line 791
    .line 792
    move/from16 v6, v18

    .line 793
    .line 794
    move/from16 v7, v25

    .line 795
    .line 796
    move/from16 v10, v27

    .line 797
    .line 798
    move/from16 v15, v29

    .line 799
    .line 800
    move v3, v0

    .line 801
    move/from16 v0, v20

    .line 802
    .line 803
    goto :goto_19

    .line 804
    :cond_25
    move-object/from16 p0, v3

    .line 805
    .line 806
    move/from16 v6, v18

    .line 807
    .line 808
    move/from16 v7, v25

    .line 809
    .line 810
    move/from16 v10, v27

    .line 811
    .line 812
    move/from16 v15, v29

    .line 813
    .line 814
    move v3, v0

    .line 815
    move/from16 v0, p1

    .line 816
    .line 817
    move-object/from16 p1, v4

    .line 818
    .line 819
    :goto_19
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzajh;->zza:I

    .line 820
    .line 821
    move/from16 v18, v5

    .line 822
    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .line 827
    .line 828
    move-wide/from16 v24, v8

    .line 829
    .line 830
    const-string v8, "Inconsistent stbl box for track "

    .line 831
    .line 832
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    const-string v4, ": remainingSynchronizationSamples "

    .line 839
    .line 840
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    const-string v0, ", remainingSamplesAtTimestampDelta "

    .line 847
    .line 848
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    const-string v0, ", remainingSamplesInChunk "

    .line 855
    .line 856
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    const-string v0, ", remainingTimestampDeltaChanges "

    .line 863
    .line 864
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    const-string v0, ", remainingSamplesAtTimestampOffset "

    .line 871
    .line 872
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    move/from16 v0, v23

    .line 879
    .line 880
    if-eq v0, v3, :cond_26

    .line 881
    .line 882
    const-string v0, ", ctts invalid"

    .line 883
    .line 884
    goto :goto_1a

    .line 885
    :cond_26
    const-string v0, ""

    .line 886
    .line 887
    :goto_1a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    :goto_1b
    move-object/from16 v29, p0

    .line 898
    .line 899
    move-object/from16 v30, p1

    .line 900
    .line 901
    move/from16 v31, v11

    .line 902
    .line 903
    move/from16 v5, v18

    .line 904
    .line 905
    move-wide/from16 v6, v24

    .line 906
    .line 907
    move-wide/from16 v3, v34

    .line 908
    .line 909
    goto/16 :goto_a

    .line 910
    .line 911
    :goto_1c
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzf:J

    .line 912
    .line 913
    cmp-long v0, v8, v16

    .line 914
    .line 915
    const-wide/32 v18, 0x7fffffff

    .line 916
    .line 917
    .line 918
    if-lez v0, :cond_27

    .line 919
    .line 920
    const-wide/16 v10, 0x8

    .line 921
    .line 922
    mul-long v34, v3, v10

    .line 923
    .line 924
    const-wide/32 v36, 0xf4240

    .line 925
    .line 926
    .line 927
    sget-object v40, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 928
    .line 929
    move-wide/from16 v38, v8

    .line 930
    .line 931
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 932
    .line 933
    .line 934
    move-result-wide v3

    .line 935
    cmp-long v0, v3, v16

    .line 936
    .line 937
    if-lez v0, :cond_27

    .line 938
    .line 939
    cmp-long v0, v3, v18

    .line 940
    .line 941
    if-gez v0, :cond_27

    .line 942
    .line 943
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    long-to-int v3, v3

    .line 948
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 949
    .line 950
    .line 951
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzajh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajh;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    :cond_27
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzc:J

    .line 960
    .line 961
    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 962
    .line 963
    const-wide/32 v8, 0xf4240

    .line 964
    .line 965
    .line 966
    move-object/from16 v12, v40

    .line 967
    .line 968
    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 969
    .line 970
    .line 971
    move-result-wide v34

    .line 972
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzi:[J

    .line 973
    .line 974
    const-wide/32 v3, 0xf4240

    .line 975
    .line 976
    .line 977
    if-nez v0, :cond_28

    .line 978
    .line 979
    invoke-static {v14, v3, v4, v10, v11}, Lcom/google/android/gms/internal/ads/zzeu;->zzG([JJJ)V

    .line 980
    .line 981
    .line 982
    new-instance v27, Lcom/google/android/gms/internal/ads/zzajk;

    .line 983
    .line 984
    move-object/from16 v28, v1

    .line 985
    .line 986
    move-object/from16 v32, v14

    .line 987
    .line 988
    invoke-direct/range {v27 .. v35}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(Lcom/google/android/gms/internal/ads/zzajh;[J[II[J[IJ)V

    .line 989
    .line 990
    .line 991
    return-object v27

    .line 992
    :cond_28
    array-length v8, v0

    .line 993
    const/4 v9, 0x1

    .line 994
    if-ne v8, v9, :cond_2f

    .line 995
    .line 996
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    .line 997
    .line 998
    if-ne v8, v9, :cond_2e

    .line 999
    .line 1000
    array-length v8, v14

    .line 1001
    const/4 v9, 0x2

    .line 1002
    if-lt v8, v9, :cond_2e

    .line 1003
    .line 1004
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzj:[J

    .line 1005
    .line 1006
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    .line 1008
    .line 1009
    aget-wide v12, v9, v20

    .line 1010
    .line 1011
    aget-wide v34, v0, v20

    .line 1012
    .line 1013
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzd:J

    .line 1014
    .line 1015
    move-wide/from16 v38, v3

    .line 1016
    .line 1017
    move-wide/from16 v36, v10

    .line 1018
    .line 1019
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1020
    .line 1021
    .line 1022
    move-result-wide v3

    .line 1023
    move-wide/from16 v9, v38

    .line 1024
    .line 1025
    move-wide/from16 v38, v36

    .line 1026
    .line 1027
    add-long/2addr v3, v12

    .line 1028
    add-int/lit8 v11, v8, -0x1

    .line 1029
    .line 1030
    const/4 v15, 0x4

    .line 1031
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 1032
    .line 1033
    .line 1034
    move-result v15

    .line 1035
    move-wide/from16 v24, v3

    .line 1036
    .line 1037
    move/from16 v3, v20

    .line 1038
    .line 1039
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 1040
    .line 1041
    .line 1042
    move-result v4

    .line 1043
    add-int/lit8 v8, v8, -0x4

    .line 1044
    .line 1045
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    .line 1046
    .line 1047
    .line 1048
    move-result v8

    .line 1049
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 1050
    .line 1051
    .line 1052
    move-result v8

    .line 1053
    aget-wide v26, v14, v3

    .line 1054
    .line 1055
    cmp-long v3, v26, v12

    .line 1056
    .line 1057
    if-gtz v3, :cond_2d

    .line 1058
    .line 1059
    aget-wide v3, v14, v4

    .line 1060
    .line 1061
    cmp-long v3, v12, v3

    .line 1062
    .line 1063
    if-gez v3, :cond_2d

    .line 1064
    .line 1065
    aget-wide v3, v14, v8

    .line 1066
    .line 1067
    cmp-long v3, v3, v24

    .line 1068
    .line 1069
    if-gez v3, :cond_2d

    .line 1070
    .line 1071
    cmp-long v3, v24, v6

    .line 1072
    .line 1073
    if-gtz v3, :cond_2d

    .line 1074
    .line 1075
    sub-long v34, v12, v26

    .line 1076
    .line 1077
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 1078
    .line 1079
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 1080
    .line 1081
    int-to-long v3, v3

    .line 1082
    move-wide/from16 v36, v3

    .line 1083
    .line 1084
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v3

    .line 1088
    sub-long v34, v6, v24

    .line 1089
    .line 1090
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v11

    .line 1094
    move-wide/from16 v24, v3

    .line 1095
    .line 1096
    move-wide/from16 v3, v38

    .line 1097
    .line 1098
    cmp-long v8, v24, v16

    .line 1099
    .line 1100
    if-nez v8, :cond_2b

    .line 1101
    .line 1102
    cmp-long v8, v11, v16

    .line 1103
    .line 1104
    if-eqz v8, :cond_29

    .line 1105
    .line 1106
    move-wide/from16 v26, v6

    .line 1107
    .line 1108
    move-wide/from16 v6, v16

    .line 1109
    .line 1110
    goto :goto_1e

    .line 1111
    :cond_29
    move-wide/from16 v26, v6

    .line 1112
    .line 1113
    :cond_2a
    :goto_1d
    const/4 v8, 0x1

    .line 1114
    const/4 v9, 0x1

    .line 1115
    goto :goto_1f

    .line 1116
    :cond_2b
    move-wide/from16 v26, v6

    .line 1117
    .line 1118
    move-wide/from16 v6, v24

    .line 1119
    .line 1120
    :goto_1e
    cmp-long v8, v6, v18

    .line 1121
    .line 1122
    if-gtz v8, :cond_2a

    .line 1123
    .line 1124
    cmp-long v8, v11, v18

    .line 1125
    .line 1126
    if-lez v8, :cond_2c

    .line 1127
    .line 1128
    goto :goto_1d

    .line 1129
    :cond_2c
    long-to-int v5, v6

    .line 1130
    iput v5, v2, Lcom/google/android/gms/internal/ads/zzaeb;->zza:I

    .line 1131
    .line 1132
    long-to-int v5, v11

    .line 1133
    iput v5, v2, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:I

    .line 1134
    .line 1135
    const-wide/32 v5, 0xf4240

    .line 1136
    .line 1137
    .line 1138
    invoke-static {v14, v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzG([JJJ)V

    .line 1139
    .line 1140
    .line 1141
    const/16 v20, 0x0

    .line 1142
    .line 1143
    aget-wide v34, v0, v20

    .line 1144
    .line 1145
    const-wide/32 v36, 0xf4240

    .line 1146
    .line 1147
    .line 1148
    move-wide/from16 v38, v9

    .line 1149
    .line 1150
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1151
    .line 1152
    .line 1153
    move-result-wide v34

    .line 1154
    new-instance v27, Lcom/google/android/gms/internal/ads/zzajk;

    .line 1155
    .line 1156
    move-object/from16 v28, v1

    .line 1157
    .line 1158
    move-object/from16 v32, v14

    .line 1159
    .line 1160
    invoke-direct/range {v27 .. v35}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(Lcom/google/android/gms/internal/ads/zzajh;[J[II[J[IJ)V

    .line 1161
    .line 1162
    .line 1163
    return-object v27

    .line 1164
    :cond_2d
    move-wide/from16 v26, v6

    .line 1165
    .line 1166
    move-wide/from16 v3, v38

    .line 1167
    .line 1168
    goto :goto_1d

    .line 1169
    :cond_2e
    move-wide/from16 v26, v6

    .line 1170
    .line 1171
    move-wide v3, v10

    .line 1172
    goto :goto_1d

    .line 1173
    :cond_2f
    move-wide/from16 v26, v6

    .line 1174
    .line 1175
    move-wide v3, v10

    .line 1176
    :goto_1f
    if-ne v8, v9, :cond_31

    .line 1177
    .line 1178
    const/16 v20, 0x0

    .line 1179
    .line 1180
    aget-wide v6, v0, v20

    .line 1181
    .line 1182
    cmp-long v2, v6, v16

    .line 1183
    .line 1184
    if-nez v2, :cond_31

    .line 1185
    .line 1186
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzj:[J

    .line 1187
    .line 1188
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1189
    .line 1190
    .line 1191
    aget-wide v5, v0, v20

    .line 1192
    .line 1193
    const/4 v7, 0x0

    .line 1194
    :goto_20
    array-length v0, v14

    .line 1195
    if-ge v7, v0, :cond_30

    .line 1196
    .line 1197
    aget-wide v8, v14, v7

    .line 1198
    .line 1199
    sub-long v34, v8, v5

    .line 1200
    .line 1201
    const-wide/32 v36, 0xf4240

    .line 1202
    .line 1203
    .line 1204
    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1205
    .line 1206
    move-wide/from16 v38, v3

    .line 1207
    .line 1208
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1209
    .line 1210
    .line 1211
    move-result-wide v2

    .line 1212
    aput-wide v2, v14, v7

    .line 1213
    .line 1214
    const/16 v23, 0x1

    .line 1215
    .line 1216
    add-int/lit8 v7, v7, 0x1

    .line 1217
    .line 1218
    move-wide/from16 v3, v38

    .line 1219
    .line 1220
    goto :goto_20

    .line 1221
    :cond_30
    move-wide/from16 v38, v3

    .line 1222
    .line 1223
    sub-long v34, v26, v5

    .line 1224
    .line 1225
    const-wide/32 v36, 0xf4240

    .line 1226
    .line 1227
    .line 1228
    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1229
    .line 1230
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1231
    .line 1232
    .line 1233
    move-result-wide v34

    .line 1234
    new-instance v27, Lcom/google/android/gms/internal/ads/zzajk;

    .line 1235
    .line 1236
    move-object/from16 v28, v1

    .line 1237
    .line 1238
    move-object/from16 v32, v14

    .line 1239
    .line 1240
    invoke-direct/range {v27 .. v35}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(Lcom/google/android/gms/internal/ads/zzajh;[J[II[J[IJ)V

    .line 1241
    .line 1242
    .line 1243
    return-object v27

    .line 1244
    :cond_31
    move-wide/from16 v38, v3

    .line 1245
    .line 1246
    move-object/from16 v11, v29

    .line 1247
    .line 1248
    move-object/from16 v13, v30

    .line 1249
    .line 1250
    move-object/from16 v12, v33

    .line 1251
    .line 1252
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    .line 1253
    .line 1254
    const/4 v9, 0x1

    .line 1255
    if-ne v2, v9, :cond_32

    .line 1256
    .line 1257
    const/4 v3, 0x1

    .line 1258
    goto :goto_21

    .line 1259
    :cond_32
    const/4 v3, 0x0

    .line 1260
    :goto_21
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzj:[J

    .line 1261
    .line 1262
    new-array v6, v8, [I

    .line 1263
    .line 1264
    new-array v7, v8, [I

    .line 1265
    .line 1266
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1267
    .line 1268
    .line 1269
    move-object/from16 v18, v4

    .line 1270
    .line 1271
    const/4 v8, 0x0

    .line 1272
    const/4 v9, 0x0

    .line 1273
    const/4 v10, 0x0

    .line 1274
    const/4 v15, 0x0

    .line 1275
    :goto_22
    array-length v4, v0

    .line 1276
    if-ge v8, v4, :cond_39

    .line 1277
    .line 1278
    move-object v4, v6

    .line 1279
    move-object/from16 v19, v7

    .line 1280
    .line 1281
    aget-wide v6, v18, v8

    .line 1282
    .line 1283
    const-wide/16 v24, -0x1

    .line 1284
    .line 1285
    cmp-long v24, v6, v24

    .line 1286
    .line 1287
    if-eqz v24, :cond_38

    .line 1288
    .line 1289
    aget-wide v34, v0, v8

    .line 1290
    .line 1291
    move-object/from16 v33, v12

    .line 1292
    .line 1293
    move-object/from16 v30, v13

    .line 1294
    .line 1295
    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzd:J

    .line 1296
    .line 1297
    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1298
    .line 1299
    move-wide/from16 v36, v38

    .line 1300
    .line 1301
    move-wide/from16 v38, v12

    .line 1302
    .line 1303
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1304
    .line 1305
    .line 1306
    move-result-wide v12

    .line 1307
    move-object/from16 p0, v4

    .line 1308
    .line 1309
    move-wide/from16 v38, v36

    .line 1310
    .line 1311
    const/4 v4, 0x1

    .line 1312
    invoke-static {v14, v6, v7, v4, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzd([JJZZ)I

    .line 1313
    .line 1314
    .line 1315
    move-result v23

    .line 1316
    aput v23, p0, v8

    .line 1317
    .line 1318
    add-long/2addr v6, v12

    .line 1319
    const/4 v12, 0x0

    .line 1320
    invoke-static {v14, v6, v7, v3, v12}, Lcom/google/android/gms/internal/ads/zzeu;->zza([JJZZ)I

    .line 1321
    .line 1322
    .line 1323
    move-result v13

    .line 1324
    aput v13, v19, v8

    .line 1325
    .line 1326
    aget v13, p0, v8

    .line 1327
    .line 1328
    :goto_23
    aget v20, p0, v8

    .line 1329
    .line 1330
    if-ltz v20, :cond_33

    .line 1331
    .line 1332
    aget v23, v33, v20

    .line 1333
    .line 1334
    and-int/lit8 v24, v23, 0x1

    .line 1335
    .line 1336
    if-nez v24, :cond_33

    .line 1337
    .line 1338
    add-int/lit8 v20, v20, -0x1

    .line 1339
    .line 1340
    aput v20, p0, v8

    .line 1341
    .line 1342
    const/4 v4, 0x1

    .line 1343
    goto :goto_23

    .line 1344
    :cond_33
    if-gez v20, :cond_35

    .line 1345
    .line 1346
    aput v13, p0, v8

    .line 1347
    .line 1348
    :goto_24
    aget v4, p0, v8

    .line 1349
    .line 1350
    aget v13, v19, v8

    .line 1351
    .line 1352
    if-ge v4, v13, :cond_34

    .line 1353
    .line 1354
    aget v13, v33, v4

    .line 1355
    .line 1356
    const/16 v23, 0x1

    .line 1357
    .line 1358
    and-int/lit8 v13, v13, 0x1

    .line 1359
    .line 1360
    if-nez v13, :cond_34

    .line 1361
    .line 1362
    add-int/lit8 v4, v4, 0x1

    .line 1363
    .line 1364
    aput v4, p0, v8

    .line 1365
    .line 1366
    goto :goto_24

    .line 1367
    :cond_34
    :goto_25
    const/4 v13, 0x2

    .line 1368
    goto :goto_26

    .line 1369
    :cond_35
    move/from16 v4, v20

    .line 1370
    .line 1371
    goto :goto_25

    .line 1372
    :goto_26
    if-ne v2, v13, :cond_36

    .line 1373
    .line 1374
    aget v12, v19, v8

    .line 1375
    .line 1376
    if-eq v4, v12, :cond_36

    .line 1377
    .line 1378
    :goto_27
    aget v4, v19, v8

    .line 1379
    .line 1380
    array-length v12, v14

    .line 1381
    add-int/lit8 v12, v12, -0x1

    .line 1382
    .line 1383
    if-ge v4, v12, :cond_36

    .line 1384
    .line 1385
    const/16 v23, 0x1

    .line 1386
    .line 1387
    add-int/lit8 v4, v4, 0x1

    .line 1388
    .line 1389
    aget-wide v24, v14, v4

    .line 1390
    .line 1391
    cmp-long v12, v24, v6

    .line 1392
    .line 1393
    if-gtz v12, :cond_36

    .line 1394
    .line 1395
    aput v4, v19, v8

    .line 1396
    .line 1397
    goto :goto_27

    .line 1398
    :cond_36
    aget v4, v19, v8

    .line 1399
    .line 1400
    aget v6, p0, v8

    .line 1401
    .line 1402
    sub-int v7, v4, v6

    .line 1403
    .line 1404
    add-int/2addr v9, v7

    .line 1405
    if-eq v15, v6, :cond_37

    .line 1406
    .line 1407
    const/4 v6, 0x1

    .line 1408
    goto :goto_28

    .line 1409
    :cond_37
    const/4 v6, 0x0

    .line 1410
    :goto_28
    or-int/2addr v6, v10

    .line 1411
    move v15, v4

    .line 1412
    move v10, v6

    .line 1413
    :goto_29
    const/16 v23, 0x1

    .line 1414
    .line 1415
    goto :goto_2a

    .line 1416
    :cond_38
    move-object/from16 p0, v4

    .line 1417
    .line 1418
    move-object/from16 v33, v12

    .line 1419
    .line 1420
    move-object/from16 v30, v13

    .line 1421
    .line 1422
    const/4 v13, 0x2

    .line 1423
    goto :goto_29

    .line 1424
    :goto_2a
    add-int/lit8 v8, v8, 0x1

    .line 1425
    .line 1426
    move-object/from16 v6, p0

    .line 1427
    .line 1428
    move-object/from16 v7, v19

    .line 1429
    .line 1430
    move-object/from16 v13, v30

    .line 1431
    .line 1432
    move-object/from16 v12, v33

    .line 1433
    .line 1434
    goto/16 :goto_22

    .line 1435
    .line 1436
    :cond_39
    move-object/from16 p0, v6

    .line 1437
    .line 1438
    move-object/from16 v19, v7

    .line 1439
    .line 1440
    move-object/from16 v33, v12

    .line 1441
    .line 1442
    move-object/from16 v30, v13

    .line 1443
    .line 1444
    if-eq v9, v5, :cond_3a

    .line 1445
    .line 1446
    const/4 v2, 0x1

    .line 1447
    goto :goto_2b

    .line 1448
    :cond_3a
    const/4 v2, 0x0

    .line 1449
    :goto_2b
    or-int/2addr v2, v10

    .line 1450
    if-eqz v2, :cond_3b

    .line 1451
    .line 1452
    new-array v3, v9, [J

    .line 1453
    .line 1454
    goto :goto_2c

    .line 1455
    :cond_3b
    move-object v3, v11

    .line 1456
    :goto_2c
    if-eqz v2, :cond_3c

    .line 1457
    .line 1458
    new-array v4, v9, [I

    .line 1459
    .line 1460
    :goto_2d
    const/4 v5, 0x1

    .line 1461
    goto :goto_2e

    .line 1462
    :cond_3c
    move-object/from16 v4, v30

    .line 1463
    .line 1464
    goto :goto_2d

    .line 1465
    :goto_2e
    if-ne v5, v2, :cond_3d

    .line 1466
    .line 1467
    const/16 v31, 0x0

    .line 1468
    .line 1469
    :cond_3d
    if-eqz v2, :cond_3e

    .line 1470
    .line 1471
    new-array v5, v9, [I

    .line 1472
    .line 1473
    goto :goto_2f

    .line 1474
    :cond_3e
    move-object/from16 v5, v33

    .line 1475
    .line 1476
    :goto_2f
    new-array v6, v9, [J

    .line 1477
    .line 1478
    move-wide/from16 v45, v16

    .line 1479
    .line 1480
    move/from16 v44, v31

    .line 1481
    .line 1482
    const/4 v7, 0x0

    .line 1483
    const/4 v8, 0x0

    .line 1484
    const/4 v9, 0x0

    .line 1485
    :goto_30
    array-length v10, v0

    .line 1486
    if-ge v7, v10, :cond_43

    .line 1487
    .line 1488
    aget-wide v12, v18, v7

    .line 1489
    .line 1490
    aget v10, p0, v7

    .line 1491
    .line 1492
    aget v15, v19, v7

    .line 1493
    .line 1494
    move-object/from16 v21, v0

    .line 1495
    .line 1496
    if-eqz v2, :cond_3f

    .line 1497
    .line 1498
    sub-int v0, v15, v10

    .line 1499
    .line 1500
    invoke-static {v11, v10, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1501
    .line 1502
    .line 1503
    move/from16 p1, v2

    .line 1504
    .line 1505
    move-object/from16 v2, v30

    .line 1506
    .line 1507
    invoke-static {v2, v10, v4, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1508
    .line 1509
    .line 1510
    move-object/from16 v2, v33

    .line 1511
    .line 1512
    invoke-static {v2, v10, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1513
    .line 1514
    .line 1515
    goto :goto_31

    .line 1516
    :cond_3f
    move/from16 p1, v2

    .line 1517
    .line 1518
    move-object/from16 v2, v33

    .line 1519
    .line 1520
    :goto_31
    move/from16 v0, v44

    .line 1521
    .line 1522
    :goto_32
    if-ge v10, v15, :cond_42

    .line 1523
    .line 1524
    move-object/from16 v33, v2

    .line 1525
    .line 1526
    move-object/from16 v42, v3

    .line 1527
    .line 1528
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzd:J

    .line 1529
    .line 1530
    sget-object v51, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1531
    .line 1532
    const-wide/32 v47, 0xf4240

    .line 1533
    .line 1534
    .line 1535
    move-wide/from16 v49, v2

    .line 1536
    .line 1537
    invoke-static/range {v45 .. v51}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1538
    .line 1539
    .line 1540
    move-result-wide v2

    .line 1541
    aget-wide v24, v14, v10

    .line 1542
    .line 1543
    sub-long v34, v24, v12

    .line 1544
    .line 1545
    const-wide/32 v36, 0xf4240

    .line 1546
    .line 1547
    .line 1548
    move-object/from16 v40, v51

    .line 1549
    .line 1550
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1551
    .line 1552
    .line 1553
    move-result-wide v24

    .line 1554
    cmp-long v22, v24, v16

    .line 1555
    .line 1556
    if-gez v22, :cond_40

    .line 1557
    .line 1558
    const/16 v23, 0x0

    .line 1559
    .line 1560
    :goto_33
    const/16 v22, 0x1

    .line 1561
    .line 1562
    goto :goto_34

    .line 1563
    :cond_40
    const/16 v23, 0x1

    .line 1564
    .line 1565
    goto :goto_33

    .line 1566
    :goto_34
    xor-int/lit8 v26, v23, 0x1

    .line 1567
    .line 1568
    or-int v8, v26, v8

    .line 1569
    .line 1570
    add-long v2, v2, v24

    .line 1571
    .line 1572
    aput-wide v2, v6, v9

    .line 1573
    .line 1574
    if-eqz p1, :cond_41

    .line 1575
    .line 1576
    aget v2, v4, v9

    .line 1577
    .line 1578
    if-le v2, v0, :cond_41

    .line 1579
    .line 1580
    aget v0, v30, v10

    .line 1581
    .line 1582
    :cond_41
    const/4 v2, 0x1

    .line 1583
    add-int/2addr v9, v2

    .line 1584
    add-int/2addr v10, v2

    .line 1585
    move-object/from16 v2, v33

    .line 1586
    .line 1587
    move-object/from16 v3, v42

    .line 1588
    .line 1589
    goto :goto_32

    .line 1590
    :cond_42
    move-object/from16 v33, v2

    .line 1591
    .line 1592
    move-object/from16 v42, v3

    .line 1593
    .line 1594
    const/4 v2, 0x1

    .line 1595
    aget-wide v12, v21, v7

    .line 1596
    .line 1597
    add-long v45, v45, v12

    .line 1598
    .line 1599
    add-int/2addr v7, v2

    .line 1600
    move/from16 v2, p1

    .line 1601
    .line 1602
    move/from16 v44, v0

    .line 1603
    .line 1604
    move-object/from16 v0, v21

    .line 1605
    .line 1606
    goto :goto_30

    .line 1607
    :cond_43
    move-object/from16 v42, v3

    .line 1608
    .line 1609
    const/4 v2, 0x1

    .line 1610
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzd:J

    .line 1611
    .line 1612
    sget-object v51, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1613
    .line 1614
    const-wide/32 v47, 0xf4240

    .line 1615
    .line 1616
    .line 1617
    move-wide/from16 v49, v9

    .line 1618
    .line 1619
    invoke-static/range {v45 .. v51}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 1620
    .line 1621
    .line 1622
    move-result-wide v47

    .line 1623
    if-eqz v8, :cond_44

    .line 1624
    .line 1625
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajh;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 1626
    .line 1627
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v0

    .line 1631
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzL(Z)Lcom/google/android/gms/internal/ads/zzx;

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v0

    .line 1638
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzajh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajh;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v1

    .line 1642
    :cond_44
    move-object/from16 v41, v1

    .line 1643
    .line 1644
    new-instance v40, Lcom/google/android/gms/internal/ads/zzajk;

    .line 1645
    .line 1646
    move-object/from16 v43, v4

    .line 1647
    .line 1648
    move-object/from16 v46, v5

    .line 1649
    .line 1650
    move-object/from16 v45, v6

    .line 1651
    .line 1652
    invoke-direct/range {v40 .. v48}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(Lcom/google/android/gms/internal/ads/zzajh;[J[II[J[IJ)V

    .line 1653
    .line 1654
    .line 1655
    return-object v40

    .line 1656
    :cond_45
    const-string v0, "Track has no sample table size information"

    .line 1657
    .line 1658
    const/4 v1, 0x0

    .line 1659
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    throw v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzez;Lcom/google/android/gms/internal/ads/zzaeb;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfur;)Ljava/util/List;
    .locals 81
    .param p4    # Lcom/google/android/gms/internal/ads/zzs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    const-string v11, "video/hevc"

    const-string v12, "video/3gpp"

    const-string v13, "application/ttml+xml"

    const v7, 0x6d646961

    const/16 v16, 0x5

    const/4 v10, 0x4

    const/16 v18, 0x10

    const/16 v20, 0x2

    const/16 v15, 0x8

    const/16 v22, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/16 v24, 0x0

    .line 2
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzez;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_98

    .line 3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzez;

    .line 4
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v9, 0x7472616b

    if-eq v4, v9, :cond_0

    move-object/from16 v0, p7

    move-object v4, v1

    move/from16 v17, v2

    move v5, v7

    move-object/from16 v69, v11

    move-object/from16 v19, v12

    move-object/from16 v30, v13

    move v1, v15

    move/from16 v25, v24

    const/4 v2, 0x3

    const v6, 0x6d696e66

    const v8, 0x7374626c

    const v23, 0x54544d4c

    const v50, 0x74783367

    const v53, 0x77767474

    const/16 v59, 0xc

    move-object/from16 v7, p1

    move v11, v10

    move/from16 v10, v20

    move/from16 v24, v22

    const/16 v22, 0xa

    goto/16 :goto_71

    :cond_0
    const v4, 0x6d766864

    .line 5
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v9

    .line 8
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaip;->zzi(Lcom/google/android/gms/internal/ads/zzek;)I

    move-result v7

    const v14, 0x736f756e

    const/4 v5, -0x1

    if-ne v7, v14, :cond_1

    move/from16 v14, v22

    goto :goto_1

    :cond_1
    const v14, 0x76696465

    if-ne v7, v14, :cond_2

    move/from16 v14, v20

    goto :goto_1

    :cond_2
    const v14, 0x74657874

    if-eq v7, v14, :cond_3

    const v14, 0x7362746c

    if-eq v7, v14, :cond_3

    const v14, 0x73756274

    if-eq v7, v14, :cond_3

    const v14, 0x636c6370

    if-ne v7, v14, :cond_4

    :cond_3
    const/4 v14, 0x3

    goto :goto_1

    :cond_4
    const v14, 0x6d657461

    if-ne v7, v14, :cond_5

    move/from16 v14, v16

    goto :goto_1

    :cond_5
    move v14, v5

    :goto_1
    if-ne v14, v5, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v56, v1

    move/from16 v17, v2

    move-object/from16 v69, v11

    move-object/from16 v19, v12

    move-object/from16 v30, v13

    move v1, v15

    move/from16 v25, v24

    const/4 v2, 0x3

    const/4 v7, 0x0

    const/16 v22, 0xa

    const v23, 0x54544d4c

    const v50, 0x74783367

    const v53, 0x77767474

    const/16 v59, 0xc

    move v11, v10

    move/from16 v10, v20

    goto/16 :goto_6f

    :cond_6
    const v7, 0x746b6864

    .line 12
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 15
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    move-result v32

    if-nez v32, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v15, v18

    .line 17
    :goto_2
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 18
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v34

    .line 19
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v15

    move/from16 v6, v24

    :goto_3
    if-nez v32, :cond_8

    goto :goto_4

    :cond_8
    const/16 v10, 0x8

    :goto_4
    const-wide/16 v41, 0x0

    move-object/from16 v44, v9

    if-ge v6, v10, :cond_c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v10

    add-int v33, v15, v6

    .line 20
    aget-byte v10, v10, v33

    if-eq v10, v5, :cond_b

    if-nez v32, :cond_9

    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v32

    goto :goto_5

    :cond_9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    move-result-wide v32

    :goto_5
    cmp-long v6, v32, v41

    if-nez v6, :cond_a

    :goto_6
    const/16 v6, 0xa

    const-wide v35, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_7

    :cond_a
    move-wide/from16 v35, v32

    const/16 v6, 0xa

    goto :goto_7

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v9, v44

    const/4 v10, 0x4

    goto :goto_3

    .line 22
    :cond_c
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    goto :goto_6

    .line 23
    :goto_7
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v37

    const/4 v6, 0x4

    .line 25
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 26
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v10

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v15

    .line 28
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v6

    .line 30
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v7

    const-wide v45, -0x7fffffffffffffffL    # -4.9E-324

    const/high16 v8, 0x10000

    const/high16 v9, -0x10000

    if-nez v10, :cond_10

    if-ne v15, v8, :cond_e

    if-ne v6, v9, :cond_f

    if-nez v7, :cond_d

    const/16 v6, 0x5a

    :goto_8
    move/from16 v38, v6

    goto :goto_e

    :cond_d
    move v15, v8

    move v6, v9

    :cond_e
    :goto_9
    move/from16 v10, v24

    goto :goto_a

    :cond_f
    move v15, v8

    goto :goto_9

    :cond_10
    :goto_a
    if-nez v10, :cond_14

    if-ne v15, v9, :cond_13

    if-ne v6, v8, :cond_12

    if-nez v7, :cond_11

    const/16 v6, 0x10e

    goto :goto_8

    :cond_11
    :goto_b
    move v15, v9

    :goto_c
    move/from16 v10, v24

    goto :goto_d

    :cond_12
    move v8, v6

    goto :goto_b

    :cond_13
    move v8, v6

    goto :goto_c

    :cond_14
    move v8, v6

    :goto_d
    if-ne v10, v9, :cond_15

    if-nez v15, :cond_15

    if-nez v8, :cond_15

    if-ne v7, v9, :cond_15

    const/16 v6, 0xb4

    goto :goto_8

    :cond_15
    move/from16 v38, v24

    :goto_e
    new-instance v33, Lcom/google/android/gms/internal/ads/zzain;

    invoke-direct/range {v33 .. v38}, Lcom/google/android/gms/internal/ads/zzain;-><init>(IJII)V

    cmp-long v6, p2, v45

    if-nez v6, :cond_16

    invoke-static/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzain;->zzd(Lcom/google/android/gms/internal/ads/zzain;)J

    move-result-wide v6

    move-wide/from16 v49, v6

    goto :goto_f

    :cond_16
    move-wide/from16 v49, p2

    :goto_f
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 31
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaip;->zzd(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object v4

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzfe;->zzc:J

    cmp-long v4, v49, v45

    if-nez v4, :cond_17

    move-wide/from16 v36, v6

    move-wide/from16 v38, v45

    :goto_10
    move-object/from16 v4, v44

    const v6, 0x6d696e66

    goto :goto_11

    :cond_17
    const-wide/32 v51, 0xf4240

    .line 32
    sget-object v55, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v53, v6

    .line 33
    invoke-static/range {v49 .. v55}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    move-wide/from16 v36, v53

    move-wide/from16 v38, v6

    goto :goto_10

    .line 34
    :goto_11
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v7

    .line 35
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x7374626c

    .line 36
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v7

    .line 37
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, 0x6d646864

    .line 38
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v9, 0x8

    .line 41
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    move-result v9

    if-nez v9, :cond_18

    const/16 v10, 0x8

    goto :goto_12

    :cond_18
    move/from16 v10, v18

    .line 43
    :goto_12
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v50

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v10

    move/from16 v15, v24

    :goto_13
    if-nez v9, :cond_19

    const/4 v6, 0x4

    goto :goto_14

    :cond_19
    const/16 v6, 0x8

    :goto_14
    if-ge v15, v6, :cond_1d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v6

    add-int v32, v10, v15

    .line 45
    aget-byte v6, v6, v32

    if-eq v6, v5, :cond_1c

    if-nez v9, :cond_1a

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v9

    goto :goto_15

    :cond_1a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    move-result-wide v9

    :goto_15
    cmp-long v6, v9, v41

    if-nez v6, :cond_1b

    move-wide/from16 v9, v45

    move-wide/from16 v53, v50

    goto :goto_16

    :cond_1b
    move-wide/from16 v53, v50

    const-wide/32 v51, 0xf4240

    .line 47
    sget-object v55, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v49, v9

    .line 48
    invoke-static/range {v49 .. v55}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    goto :goto_16

    :cond_1c
    move-wide/from16 v53, v50

    add-int/lit8 v15, v15, 0x1

    const v6, 0x6d696e66

    goto :goto_13

    :cond_1d
    move-wide/from16 v53, v50

    .line 49
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    move-wide/from16 v9, v45

    .line 50
    :goto_16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v4

    const/16 v43, 0xa

    shr-int/lit8 v6, v4, 0xa

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    shr-int/lit8 v15, v4, 0x5

    and-int/lit8 v15, v15, 0x1f

    add-int/lit8 v15, v15, 0x60

    int-to-char v15, v15

    and-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    const/4 v5, 0x3

    new-array v8, v5, [C

    aput-char v6, v8, v24

    aput-char v15, v8, v22

    aput-char v4, v8, v20

    move/from16 v4, v24

    :goto_17
    if-ge v4, v5, :cond_20

    .line 51
    aget-char v5, v8, v4

    const/16 v6, 0x61

    if-lt v5, v6, :cond_1e

    const/16 v6, 0x7a

    if-le v5, v6, :cond_1f

    :cond_1e
    const/4 v4, 0x0

    goto :goto_18

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x3

    goto :goto_17

    .line 52
    :cond_20
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([C)V

    .line 53
    :goto_18
    new-instance v49, Lcom/google/android/gms/internal/ads/zzaih;

    move-wide/from16 v50, v53

    move-object/from16 v54, v4

    move-wide/from16 v52, v9

    invoke-direct/range {v49 .. v54}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(JJLjava/lang/String;)V

    const v4, 0x73747364

    .line 54
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v4

    if-eqz v4, :cond_97

    .line 55
    invoke-static/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzain;->zzb(Lcom/google/android/gms/internal/ads/zzain;)I

    move-result v5

    invoke-static/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzain;->zzc(Lcom/google/android/gms/internal/ads/zzain;)I

    move-result v15

    invoke-static/range {v49 .. v49}, Lcom/google/android/gms/internal/ads/zzaih;->zzc(Lcom/google/android/gms/internal/ads/zzaih;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v7, 0xc

    .line 56
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 57
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaik;

    .line 58
    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzaik;-><init>(I)V

    move/from16 v10, v24

    :goto_19
    if-ge v10, v8, :cond_8a

    move-object/from16 v27, v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v3

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v35

    if-lez v35, :cond_21

    move/from16 v7, v22

    goto :goto_1a

    :cond_21
    move/from16 v7, v24

    .line 60
    :goto_1a
    const-string v0, "childAtomSize must be positive"

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    move v7, v2

    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v2

    move-object/from16 v47, v1

    const v1, 0x61766331

    move/from16 v50, v3

    const v3, 0x656e6376

    if-eq v2, v1, :cond_22

    const v1, 0x61766333

    if-eq v2, v1, :cond_22

    if-eq v2, v3, :cond_22

    const v1, 0x6d317620

    if-eq v2, v1, :cond_2e

    const v1, 0x6d703476

    if-eq v2, v1, :cond_22

    const v1, 0x68766331

    if-eq v2, v1, :cond_22

    const v1, 0x68657631

    if-eq v2, v1, :cond_22

    const v1, 0x73323633

    if-eq v2, v1, :cond_22

    const v1, 0x48323633

    if-eq v2, v1, :cond_22

    const v1, 0x68323633

    if-eq v2, v1, :cond_22

    const v1, 0x76703038

    if-eq v2, v1, :cond_22

    const v1, 0x76703039

    if-eq v2, v1, :cond_22

    const v1, 0x61763031

    if-eq v2, v1, :cond_22

    const v1, 0x64766176

    if-eq v2, v1, :cond_22

    const v1, 0x64766131

    if-eq v2, v1, :cond_22

    const v1, 0x64766865

    if-eq v2, v1, :cond_22

    const v1, 0x64766831

    if-eq v2, v1, :cond_22

    const v1, 0x61707631

    if-ne v2, v1, :cond_23

    :cond_22
    move-object v1, v4

    move/from16 v17, v7

    move/from16 v21, v8

    move-object/from16 v19, v12

    move/from16 v24, v22

    move-object/from16 v57, v27

    move/from16 v4, v35

    move/from16 v22, v43

    move-object/from16 v56, v47

    const v23, 0x54544d4c

    const v53, 0x77767474

    move-object/from16 v8, p4

    move v7, v2

    :goto_1b
    move/from16 v2, v50

    const v50, 0x74783367

    goto/16 :goto_24

    :cond_23
    const v0, 0x6d703461

    if-eq v2, v0, :cond_2d

    const v0, 0x656e6361

    if-eq v2, v0, :cond_2d

    const v0, 0x61632d33

    if-eq v2, v0, :cond_2d

    const v0, 0x65632d33

    if-eq v2, v0, :cond_2d

    const v0, 0x61632d34

    if-eq v2, v0, :cond_2d

    const v0, 0x6d6c7061

    if-eq v2, v0, :cond_2d

    const v0, 0x64747363

    if-eq v2, v0, :cond_2d

    const v0, 0x64747365

    if-eq v2, v0, :cond_2d

    const v0, 0x64747368

    if-eq v2, v0, :cond_2d

    const v0, 0x6474736c

    if-eq v2, v0, :cond_2d

    const v0, 0x64747378

    if-eq v2, v0, :cond_2d

    const v0, 0x73616d72

    if-eq v2, v0, :cond_2d

    const v0, 0x73617762

    if-eq v2, v0, :cond_2d

    const v0, 0x6c70636d

    if-eq v2, v0, :cond_2d

    const v0, 0x736f7774

    if-eq v2, v0, :cond_2d

    const v0, 0x74776f73

    if-eq v2, v0, :cond_2d

    const v0, 0x2e6d7032

    if-eq v2, v0, :cond_2d

    const v0, 0x2e6d7033

    if-eq v2, v0, :cond_2d

    const v0, 0x6d686131

    if-eq v2, v0, :cond_2d

    const v0, 0x6d686d31

    if-eq v2, v0, :cond_2d

    const v0, 0x616c6163

    if-eq v2, v0, :cond_2d

    const v0, 0x616c6177

    if-eq v2, v0, :cond_2d

    const v0, 0x756c6177

    if-eq v2, v0, :cond_2d

    const v0, 0x4f707573

    if-eq v2, v0, :cond_2d

    const v0, 0x664c6143

    if-eq v2, v0, :cond_2d

    const v0, 0x69616d66

    if-ne v2, v0, :cond_24

    move-object v1, v4

    move/from16 v17, v7

    move/from16 v21, v8

    move-object/from16 v19, v12

    move/from16 v12, v22

    move/from16 v4, v35

    move/from16 v22, v43

    move/from16 v3, v50

    const v23, 0x54544d4c

    const v25, 0x76703038

    const v26, 0x6d317620

    const v28, 0x6d646961

    const v30, 0x6d696e66

    const/16 v31, 0x0

    const/16 v32, -0x1

    const v34, 0x7374626c

    const/16 v40, 0x4

    const/16 v44, 0xc

    const v50, 0x74783367

    const v53, 0x77767474

    move-object/from16 v8, p4

    :goto_1c
    move/from16 v7, p6

    goto/16 :goto_23

    :cond_24
    const v0, 0x54544d4c

    if-eq v2, v0, :cond_28

    const v0, 0x74783367

    if-eq v2, v0, :cond_28

    const v0, 0x77767474

    if-eq v2, v0, :cond_28

    const v0, 0x73747070

    if-eq v2, v0, :cond_28

    const v0, 0x63363038

    if-ne v2, v0, :cond_25

    goto/16 :goto_1f

    :cond_25
    const v0, 0x6d657474

    if-ne v2, v0, :cond_27

    add-int/lit8 v3, v50, 0x10

    .line 62
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    move/from16 v0, v24

    .line 63
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 65
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :cond_26
    :goto_1d
    move-object v1, v4

    move v3, v5

    move-object v5, v6

    move/from16 v17, v7

    move/from16 v21, v8

    move/from16 v28, v10

    move-object/from16 v69, v11

    move-object/from16 v19, v12

    :goto_1e
    move-object/from16 v30, v13

    move/from16 v34, v14

    move v4, v15

    move-object/from16 v57, v27

    move/from16 v66, v35

    move/from16 v22, v43

    move-object/from16 v56, v47

    move/from16 v27, v50

    const/4 v2, 0x3

    const/4 v7, -0x1

    const/4 v11, 0x4

    const v23, 0x54544d4c

    const v50, 0x74783367

    const v53, 0x77767474

    const/16 v59, 0xc

    goto/16 :goto_64

    :cond_27
    const v0, 0x63616d6d

    if-ne v2, v0, :cond_26

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 66
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 67
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    const-string v1, "application/x-camera-motion"

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_1d

    :cond_28
    :goto_1f
    add-int/lit8 v3, v50, 0x10

    .line 70
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    const v3, 0x54544d4c

    if-ne v2, v3, :cond_29

    move-object/from16 v19, v12

    move-object v3, v13

    :goto_20
    const-wide v0, 0x7fffffffffffffffL

    :goto_21
    const/4 v2, 0x0

    goto :goto_22

    :cond_29
    const v0, 0x74783367

    if-ne v2, v0, :cond_2a

    add-int/lit8 v1, v35, -0x10

    .line 71
    new-array v2, v1, [B

    const/4 v0, 0x0

    .line 72
    invoke-virtual {v4, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 73
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v1

    const-string v2, "application/x-quicktime-tx3g"

    move-object v3, v2

    move-object/from16 v19, v12

    move-object v2, v1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_22

    :cond_2a
    const/4 v0, 0x0

    const v1, 0x77767474

    if-ne v2, v1, :cond_2b

    const-string v2, "application/x-mp4-vtt"

    move-object v3, v2

    move-object/from16 v19, v12

    goto :goto_20

    :cond_2b
    move-object/from16 v19, v12

    const v12, 0x73747070

    if-ne v2, v12, :cond_2c

    move-object v3, v13

    move-wide/from16 v0, v41

    goto :goto_21

    :cond_2c
    move/from16 v2, v22

    iput v2, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzd:I

    const-string v17, "application/x-mp4-cea-608"

    move-object/from16 v3, v17

    goto :goto_20

    .line 74
    :goto_22
    new-instance v12, Lcom/google/android/gms/internal/ads/zzx;

    .line 75
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 76
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 77
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 78
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 79
    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzah(J)Lcom/google/android/gms/internal/ads/zzx;

    .line 80
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 81
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    move-object v1, v4

    move v3, v5

    move-object v5, v6

    move/from16 v17, v7

    move/from16 v21, v8

    move/from16 v28, v10

    move-object/from16 v69, v11

    goto/16 :goto_1e

    :cond_2d
    move-object/from16 v19, v12

    move/from16 v17, v22

    move-object v1, v4

    move/from16 v21, v8

    move/from16 v12, v17

    move/from16 v4, v35

    move/from16 v22, v43

    move/from16 v3, v50

    const v23, 0x54544d4c

    const/16 v24, 0x0

    const v25, 0x76703038

    const v26, 0x6d317620

    const v28, 0x6d646961

    const v30, 0x6d696e66

    const/16 v31, 0x0

    const/16 v32, -0x1

    const v34, 0x7374626c

    const/16 v40, 0x4

    const/16 v44, 0xc

    const v50, 0x74783367

    const v53, 0x77767474

    move-object/from16 v8, p4

    move/from16 v17, v7

    goto/16 :goto_1c

    .line 82
    :goto_23
    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzaip;->zzp(Lcom/google/android/gms/internal/ads/zzek;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzaik;I)V

    move/from16 v66, v4

    move/from16 v28, v10

    move-object/from16 v69, v11

    move-object/from16 v30, v13

    move/from16 v34, v14

    move v4, v15

    move-object/from16 v57, v27

    move/from16 v7, v32

    move/from16 v11, v40

    move/from16 v59, v44

    move-object/from16 v56, v47

    const/4 v2, 0x3

    move/from16 v27, v3

    move v3, v5

    move-object v5, v6

    goto/16 :goto_64

    :cond_2e
    move/from16 v17, v7

    move/from16 v21, v8

    move-object/from16 v19, v12

    move/from16 v24, v22

    move-object/from16 v57, v27

    move/from16 v22, v43

    move-object/from16 v56, v47

    const v23, 0x54544d4c

    const v53, 0x77767474

    move-object/from16 v8, p4

    move v12, v1

    move v7, v2

    move-object v1, v4

    move/from16 v4, v35

    goto/16 :goto_1b

    :goto_24
    add-int/lit8 v12, v2, 0x10

    .line 83
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    move/from16 v12, v18

    .line 84
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v12

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v3

    move/from16 v28, v10

    const/16 v10, 0x32

    .line 87
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v10

    move-object/from16 v30, v13

    const v13, 0x656e6376

    if-ne v7, v13, :cond_31

    .line 88
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaip;->zzj(Lcom/google/android/gms/internal/ads/zzek;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_30

    .line 89
    iget-object v13, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v8, :cond_2f

    move/from16 v27, v2

    const/16 v34, 0x0

    goto :goto_25

    :cond_2f
    move/from16 v27, v2

    .line 90
    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v2

    move-object/from16 v34, v2

    .line 91
    :goto_25
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzaik;->zza:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 92
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaji;

    aput-object v7, v2, v28

    :goto_26
    move v2, v13

    goto :goto_27

    :cond_30
    move/from16 v27, v2

    move-object/from16 v34, v8

    goto :goto_26

    .line 93
    :goto_27
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    move v7, v2

    move-object/from16 v2, v34

    :goto_28
    const v13, 0x6d317620

    goto :goto_29

    :cond_31
    move/from16 v27, v2

    move-object v2, v8

    goto :goto_28

    :goto_29
    if-ne v7, v13, :cond_32

    const-string v26, "video/mpeg"

    goto :goto_2a

    :cond_32
    const v13, 0x48323633

    if-ne v7, v13, :cond_33

    move v7, v13

    move-object/from16 v26, v19

    goto :goto_2a

    :cond_33
    const/16 v26, 0x0

    :goto_2a
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v40, v2

    move/from16 v60, v3

    move/from16 v64, v5

    move-object/from16 v35, v6

    move/from16 v65, v7

    move/from16 v61, v12

    move/from16 v63, v13

    move/from16 v34, v14

    move/from16 v55, v15

    move-object/from16 v5, v26

    const/4 v2, -0x1

    const/16 v3, 0x8

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v15, 0x8

    const/16 v26, 0x0

    const/16 v43, -0x1

    const/16 v44, 0x0

    const/16 v45, -0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v54, 0x0

    const/16 v62, 0x0

    move v12, v10

    const/4 v10, -0x1

    :goto_2b
    sub-int v7, v12, v27

    if-ge v7, v4, :cond_34

    .line 94
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v7

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v66

    if-nez v66, :cond_36

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v66

    move/from16 v67, v12

    sub-int v12, v66, v27

    if-ne v12, v4, :cond_35

    :cond_34
    move/from16 v80, v2

    move/from16 v73, v3

    move/from16 v66, v4

    move-object/from16 v71, v9

    move-object/from16 v69, v11

    move/from16 v75, v14

    move/from16 v74, v15

    const/4 v2, 0x3

    const/4 v7, -0x1

    const/4 v11, 0x4

    const/16 v59, 0xc

    goto/16 :goto_61

    :cond_35
    const/4 v12, 0x0

    goto :goto_2c

    :cond_36
    move/from16 v67, v12

    move/from16 v12, v66

    :goto_2c
    if-lez v12, :cond_37

    move/from16 v66, v4

    move/from16 v4, v24

    goto :goto_2d

    :cond_37
    move/from16 v66, v4

    const/4 v4, 0x0

    .line 96
    :goto_2d
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v4

    move/from16 v68, v7

    const v7, 0x61766343

    if-ne v4, v7, :cond_3a

    const/16 v48, 0x8

    add-int/lit8 v7, v68, 0x8

    if-nez v5, :cond_38

    move/from16 v3, v24

    :goto_2e
    const/4 v4, 0x0

    goto :goto_2f

    :cond_38
    const/4 v3, 0x0

    goto :goto_2e

    .line 98
    :goto_2f
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 99
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 100
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zza(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzacs;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzacs;->zza:Ljava/util/List;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzacs;->zzb:I

    iput v5, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzc:I

    if-nez v26, :cond_39

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzacs;->zzk:F

    move/from16 v63, v5

    const/4 v5, 0x0

    goto :goto_30

    :cond_39
    move/from16 v5, v24

    :goto_30
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzacs;->zzl:Ljava/lang/String;

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzacs;->zzj:I

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzacs;->zzg:I

    iget v13, v3, Lcom/google/android/gms/internal/ads/zzacs;->zzh:I

    iget v14, v3, Lcom/google/android/gms/internal/ads/zzacs;->zzi:I

    iget v15, v3, Lcom/google/android/gms/internal/ads/zzacs;->zze:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzacs;->zzf:I

    const-string v26, "video/avc"

    move-object/from16 v45, v26

    move/from16 v26, v5

    move-object/from16 v5, v45

    move-object/from16 v72, v0

    move/from16 v80, v2

    move-object/from16 v62, v6

    move/from16 v45, v7

    move-object/from16 v71, v9

    move-object/from16 v69, v11

    move v6, v14

    move/from16 v70, v65

    const/4 v2, 0x3

    const/4 v7, -0x1

    const/4 v11, 0x4

    const/16 v59, 0xc

    move v14, v13

    move-object v13, v4

    goto/16 :goto_60

    :cond_3a
    const v7, 0x68766343

    if-ne v4, v7, :cond_3e

    const/16 v48, 0x8

    add-int/lit8 v7, v68, 0x8

    if-nez v5, :cond_3b

    move/from16 v3, v24

    :goto_31
    const/4 v4, 0x0

    goto :goto_32

    :cond_3b
    const/4 v3, 0x0

    goto :goto_31

    .line 101
    :goto_32
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 102
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 103
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaec;->zza(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaec;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaec;->zza:Ljava/util/List;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzb:I

    iput v5, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzc:I

    if-nez v26, :cond_3c

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzj:F

    move/from16 v63, v5

    const/4 v5, 0x0

    goto :goto_33

    :cond_3c
    move/from16 v5, v24

    :goto_33
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzk:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzc:I

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzl:Ljava/lang/String;

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzi:I

    const/4 v13, -0x1

    if-eq v10, v13, :cond_3d

    goto :goto_34

    :cond_3d
    move v10, v2

    :goto_34
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzf:I

    iget v13, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzg:I

    iget v14, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzh:I

    iget v15, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzd:I

    move/from16 v26, v2

    iget v2, v3, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzm:Lcom/google/android/gms/internal/ads/zzfp;

    move-object/from16 v72, v0

    move/from16 v45, v6

    move/from16 v43, v7

    move-object/from16 v62, v8

    move-object/from16 v71, v9

    move/from16 v80, v10

    move-object/from16 v69, v11

    move v6, v14

    move/from16 v10, v26

    move/from16 v70, v65

    const/4 v7, -0x1

    const/16 v59, 0xc

    move-object v8, v3

    move/from16 v26, v5

    move-object/from16 v5, v69

    move v14, v13

    const/4 v11, 0x4

    move v3, v2

    move-object v13, v4

    const/4 v2, 0x3

    goto/16 :goto_60

    :cond_3e
    const v7, 0x6c687643

    if-ne v4, v7, :cond_4b

    const/16 v48, 0x8

    add-int/lit8 v7, v68, 0x8

    .line 104
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "lhvC must follow hvcC atom"

    .line 105
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    if-eqz v8, :cond_40

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzfp;->zza:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 106
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    move/from16 v5, v20

    if-lt v4, v5, :cond_3f

    move/from16 v4, v24

    goto :goto_35

    :cond_3f
    const/4 v4, 0x0

    goto :goto_35

    :cond_40
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_35
    const-string v5, "must have at least two layers"

    .line 107
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 108
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 109
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaec;

    move-result-object v4

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzc:I

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzaec;->zzb:I

    if-ne v5, v7, :cond_41

    move/from16 v5, v24

    goto :goto_36

    :cond_41
    const/4 v5, 0x0

    :goto_36
    const-string v7, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 111
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaec;->zzf:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_43

    if-ne v10, v5, :cond_42

    move/from16 v5, v24

    goto :goto_37

    :cond_42
    const/4 v5, 0x0

    :goto_37
    const-string v7, "colorSpace must be the same for both views"

    .line 112
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    :cond_43
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaec;->zzg:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_45

    if-ne v14, v5, :cond_44

    move/from16 v5, v24

    goto :goto_38

    :cond_44
    const/4 v5, 0x0

    :goto_38
    const-string v7, "colorRange must be the same for both views"

    .line 113
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    :cond_45
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaec;->zzh:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_47

    if-ne v6, v5, :cond_46

    move/from16 v5, v24

    goto :goto_39

    :cond_46
    const/4 v5, 0x0

    :goto_39
    const-string v7, "colorTransfer must be the same for both views"

    .line 114
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    :cond_47
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaec;->zzd:I

    if-ne v15, v5, :cond_48

    move/from16 v5, v24

    goto :goto_3a

    :cond_48
    const/4 v5, 0x0

    :goto_3a
    const-string v7, "bitdepthLuma must be the same for both views"

    .line 115
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    if-ne v3, v5, :cond_49

    move/from16 v5, v24

    goto :goto_3b

    :cond_49
    const/4 v5, 0x0

    :goto_3b
    const-string v7, "bitdepthChroma must be the same for both views"

    .line 116
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    if-eqz v13, :cond_4a

    .line 117
    sget v5, Lcom/google/android/gms/internal/ads/zzfyc;->zzd:I

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfxz;

    .line 118
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfxz;-><init>()V

    .line 119
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzfxz;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxz;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzaec;->zza:Ljava/util/List;

    .line 120
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfxz;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxz;

    .line 121
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfxz;->zzi()Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v7

    goto :goto_3c

    :cond_4a
    const-string v5, "initializationData must be already set from hvcC atom"

    const/4 v7, 0x0

    .line 122
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    const/4 v7, 0x0

    .line 123
    :goto_3c
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaec;->zzl:Ljava/lang/String;

    const-string v5, "video/mv-hevc"

    move-object/from16 v72, v0

    move/from16 v80, v2

    move-object/from16 v62, v4

    move-object v13, v7

    move-object/from16 v71, v9

    move-object/from16 v69, v11

    move/from16 v70, v65

    const/4 v2, 0x3

    const/4 v7, -0x1

    const/4 v11, 0x4

    :goto_3d
    const/16 v59, 0xc

    goto/16 :goto_60

    :cond_4b
    const v7, 0x76657875

    if-ne v4, v7, :cond_5b

    const/16 v48, 0x8

    add-int/lit8 v7, v68, 0x8

    .line 124
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v4

    move-object/from16 v69, v11

    const/4 v7, 0x0

    :goto_3e
    sub-int v11, v4, v68

    if-ge v11, v12, :cond_54

    .line 125
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 126
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v11

    if-lez v11, :cond_4c

    move/from16 v70, v4

    move/from16 v4, v24

    goto :goto_3f

    :cond_4c
    move/from16 v70, v4

    const/4 v4, 0x0

    .line 127
    :goto_3f
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v4

    move-object/from16 v71, v9

    const v9, 0x65796573

    if-ne v4, v9, :cond_53

    const/16 v48, 0x8

    add-int/lit8 v4, v70, 0x8

    .line 129
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v4

    :goto_40
    sub-int v7, v4, v70

    if-ge v7, v11, :cond_52

    .line 130
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v7

    if-lez v7, :cond_4d

    move/from16 v9, v24

    goto :goto_41

    :cond_4d
    const/4 v9, 0x0

    .line 132
    :goto_41
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v9

    move-object/from16 v72, v0

    const v0, 0x73747269

    if-ne v9, v0, :cond_51

    const/4 v0, 0x4

    .line 134
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v4

    and-int/lit8 v7, v4, 0x1

    move/from16 v58, v0

    const/4 v9, 0x2

    and-int/lit8 v0, v4, 0x2

    if-ne v0, v9, :cond_4e

    move/from16 v0, v24

    :goto_42
    const/16 v9, 0x8

    goto :goto_43

    :cond_4e
    const/4 v0, 0x0

    goto :goto_42

    :goto_43
    and-int/2addr v4, v9

    if-ne v4, v9, :cond_4f

    move/from16 v4, v24

    move v9, v4

    goto :goto_44

    :cond_4f
    move/from16 v9, v24

    const/4 v4, 0x0

    :goto_44
    if-eq v9, v7, :cond_50

    const/4 v7, 0x0

    goto :goto_45

    :cond_50
    const/4 v7, 0x1

    :goto_45
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaig;

    move/from16 v73, v11

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaij;

    .line 136
    invoke-direct {v11, v7, v0, v4}, Lcom/google/android/gms/internal/ads/zzaij;-><init>(ZZZ)V

    invoke-direct {v9, v11}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(Lcom/google/android/gms/internal/ads/zzaij;)V

    move-object v7, v9

    goto :goto_46

    :cond_51
    move/from16 v73, v11

    const/16 v58, 0x4

    add-int/2addr v4, v7

    move-object/from16 v0, v72

    const/16 v24, 0x1

    goto :goto_40

    :cond_52
    move-object/from16 v72, v0

    move/from16 v73, v11

    const/16 v58, 0x4

    const/4 v7, 0x0

    goto :goto_46

    :cond_53
    move-object/from16 v72, v0

    move/from16 v73, v11

    const/16 v58, 0x4

    :goto_46
    add-int v4, v70, v73

    move-object/from16 v9, v71

    move-object/from16 v0, v72

    const/16 v24, 0x1

    goto/16 :goto_3e

    :cond_54
    move-object/from16 v72, v0

    move-object/from16 v71, v9

    const/16 v58, 0x4

    if-nez v7, :cond_55

    const/4 v7, 0x0

    goto :goto_47

    .line 137
    :cond_55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaio;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzaio;-><init>(Lcom/google/android/gms/internal/ads/zzaig;)V

    move-object v7, v0

    :goto_47
    if-eqz v7, :cond_56

    if-eqz v8, :cond_58

    .line 138
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzfp;->zza:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 139
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v9, 0x2

    if-lt v0, v9, :cond_57

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaio;->zzb()Z

    move-result v0

    const-string v4, "both eye views must be marked as available"

    .line 140
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaio;->zza(Lcom/google/android/gms/internal/ads/zzaio;)Lcom/google/android/gms/internal/ads/zzaig;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaig;->zza(Lcom/google/android/gms/internal/ads/zzaig;)Lcom/google/android/gms/internal/ads/zzaij;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzaij;)Z

    move-result v0

    const/4 v9, 0x1

    xor-int/2addr v0, v9

    const-string v4, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 141
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    :cond_56
    move/from16 v80, v2

    move/from16 v73, v3

    move/from16 v75, v14

    move/from16 v74, v15

    move/from16 v11, v58

    move/from16 v70, v65

    const/4 v2, 0x3

    const/4 v7, -0x1

    const/16 v59, 0xc

    move-object/from16 v65, v8

    goto/16 :goto_5a

    :cond_57
    :goto_48
    const/4 v9, 0x1

    const/4 v0, -0x1

    goto :goto_49

    :cond_58
    const/4 v8, 0x0

    goto :goto_48

    :goto_49
    if-ne v2, v0, :cond_5a

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaio;->zza(Lcom/google/android/gms/internal/ads/zzaio;)Lcom/google/android/gms/internal/ads/zzaig;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaig;->zza(Lcom/google/android/gms/internal/ads/zzaig;)Lcom/google/android/gms/internal/ads/zzaij;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzaij;)Z

    move-result v0

    if-eq v9, v0, :cond_59

    move/from16 v11, v58

    move/from16 v80, v11

    :goto_4a
    move/from16 v70, v65

    const/4 v2, 0x3

    const/4 v7, -0x1

    goto/16 :goto_3d

    :cond_59
    move/from16 v80, v16

    move/from16 v11, v58

    goto :goto_4a

    :cond_5a
    move v7, v0

    move/from16 v80, v2

    move/from16 v11, v58

    move/from16 v70, v65

    const/4 v2, 0x3

    goto/16 :goto_3d

    :cond_5b
    move-object/from16 v72, v0

    move-object/from16 v71, v9

    move-object/from16 v69, v11

    const/16 v58, 0x4

    const v0, 0x64766343

    if-eq v4, v0, :cond_5c

    const v0, 0x64767643

    if-eq v4, v0, :cond_5c

    const v0, 0x64767743

    if-ne v4, v0, :cond_5d

    :cond_5c
    move/from16 v80, v2

    move/from16 v73, v3

    move/from16 v75, v14

    move/from16 v74, v15

    move/from16 v11, v58

    move/from16 v70, v65

    move/from16 v0, v68

    const/4 v2, 0x3

    const/4 v7, -0x1

    const/16 v59, 0xc

    move-object/from16 v65, v8

    goto/16 :goto_5e

    :cond_5d
    const v0, 0x76706343

    if-ne v4, v0, :cond_62

    const/16 v7, 0xc

    add-int/lit8 v0, v68, 0xc

    if-nez v5, :cond_5e

    const/4 v3, 0x1

    :goto_4b
    const/4 v4, 0x0

    goto :goto_4c

    :cond_5e
    const/4 v3, 0x0

    goto :goto_4b

    .line 142
    :goto_4c
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 143
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    int-to-byte v0, v0

    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v3

    int-to-byte v3, v3

    .line 146
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v4

    shr-int/lit8 v5, v4, 0x4

    const/16 v24, 0x1

    shr-int/lit8 v6, v4, 0x1

    move/from16 v9, v65

    const v11, 0x76703038

    if-ne v9, v11, :cond_5f

    const-string v10, "video/x-vnd.on2.vp8"

    goto :goto_4d

    .line 147
    :cond_5f
    const-string v10, "video/x-vnd.on2.vp9"

    .line 148
    :goto_4d
    const-string v14, "video/x-vnd.on2.vp9"

    .line 149
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_60

    and-int/lit8 v6, v6, 0x7

    int-to-byte v13, v5

    .line 150
    sget v14, Lcom/google/android/gms/internal/ads/zzdh;->zza:I

    int-to-byte v6, v6

    new-array v14, v7, [B

    const/4 v15, 0x1

    const/16 v25, 0x0

    aput-byte v15, v14, v25

    aput-byte v15, v14, v15

    const/16 v20, 0x2

    aput-byte v0, v14, v20

    const/16 v29, 0x3

    aput-byte v20, v14, v29

    aput-byte v15, v14, v58

    aput-byte v3, v14, v16

    const/4 v0, 0x6

    aput-byte v29, v14, v0

    const/4 v0, 0x7

    aput-byte v15, v14, v0

    const/16 v48, 0x8

    aput-byte v13, v14, v48

    const/16 v0, 0x9

    aput-byte v58, v14, v0

    aput-byte v15, v14, v22

    const/16 v0, 0xb

    aput-byte v6, v14, v0

    .line 151
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v13

    goto :goto_4e

    :cond_60
    const/4 v15, 0x1

    :goto_4e
    and-int/lit8 v0, v4, 0x1

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v3

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v4

    .line 154
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v3

    if-eq v15, v0, :cond_61

    const/4 v0, 0x2

    goto :goto_4f

    :cond_61
    const/4 v0, 0x1

    :goto_4f
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v4

    move v14, v0

    move/from16 v80, v2

    move v6, v4

    move v15, v5

    move/from16 v59, v7

    move/from16 v70, v9

    move/from16 v11, v58

    const/4 v2, 0x3

    const/4 v7, -0x1

    move-object v5, v10

    move v10, v3

    move v3, v15

    goto/16 :goto_60

    :cond_62
    move/from16 v9, v65

    const/16 v7, 0xc

    const v11, 0x76703038

    const v0, 0x61763143

    if-ne v4, v0, :cond_63

    add-int/lit8 v0, v12, -0x8

    const/16 v48, 0x8

    add-int/lit8 v3, v68, 0x8

    .line 155
    new-array v4, v0, [B

    const/4 v5, 0x0

    .line 156
    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 157
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v0

    .line 158
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 159
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaip;->zzk(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzk;->zzf:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzk;->zzg:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const-string v13, "video/av01"

    move/from16 v80, v2

    move v15, v4

    move/from16 v59, v7

    move/from16 v70, v9

    move v14, v10

    move/from16 v11, v58

    const/4 v2, 0x3

    const/4 v7, -0x1

    move v10, v6

    move v6, v3

    move v3, v5

    move-object v5, v13

    move-object v13, v0

    goto/16 :goto_60

    :cond_63
    const v0, 0x636c6c69

    if-ne v4, v0, :cond_65

    if-nez v44, :cond_64

    .line 160
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaip;->zzo()Ljava/nio/ByteBuffer;

    move-result-object v44

    :cond_64
    move-object/from16 v0, v44

    const/16 v4, 0x15

    .line 161
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v44, v0

    move/from16 v80, v2

    move/from16 v59, v7

    move/from16 v70, v9

    move/from16 v11, v58

    :goto_50
    const/4 v2, 0x3

    :goto_51
    const/4 v7, -0x1

    goto/16 :goto_60

    :cond_65
    const v0, 0x6d646376

    if-ne v4, v0, :cond_67

    if-nez v44, :cond_66

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaip;->zzo()Ljava/nio/ByteBuffer;

    move-result-object v44

    :cond_66
    move-object/from16 v0, v44

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v4

    move/from16 v59, v7

    .line 166
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v7

    .line 167
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v11

    move-object/from16 v65, v8

    .line 168
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v8

    move/from16 v70, v9

    .line 169
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v9

    move/from16 v73, v3

    .line 170
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v3

    move/from16 v74, v15

    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v15

    move/from16 v75, v14

    .line 172
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v14

    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v76

    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v78

    move/from16 v80, v2

    const/4 v2, 0x1

    .line 175
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 177
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    div-long v2, v76, v2

    long-to-int v2, v2

    int-to-short v2, v2

    .line 184
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    div-long v2, v78, v2

    long-to-int v2, v2

    int-to-short v2, v2

    .line 185
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v44, v0

    :goto_52
    move/from16 v11, v58

    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    move/from16 v14, v75

    goto/16 :goto_50

    :cond_67
    move/from16 v80, v2

    move/from16 v73, v3

    move/from16 v59, v7

    move-object/from16 v65, v8

    move/from16 v70, v9

    move/from16 v75, v14

    move/from16 v74, v15

    const v0, 0x64323633

    if-ne v4, v0, :cond_69

    if-nez v5, :cond_68

    const/4 v0, 0x1

    :goto_53
    const/4 v2, 0x0

    goto :goto_54

    :cond_68
    const/4 v0, 0x0

    goto :goto_53

    .line 186
    :goto_54
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    move-object/from16 v5, v19

    goto :goto_52

    :cond_69
    const/4 v2, 0x0

    const v0, 0x65736473

    if-ne v4, v0, :cond_6c

    if-nez v5, :cond_6a

    const/4 v0, 0x1

    goto :goto_55

    :cond_6a
    const/4 v0, 0x0

    .line 187
    :goto_55
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    move/from16 v0, v68

    .line 188
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaip;->zzn(Lcom/google/android/gms/internal/ads/zzek;I)Lcom/google/android/gms/internal/ads/zzaif;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaif;->zzc(Lcom/google/android/gms/internal/ads/zzaif;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaif;->zzd(Lcom/google/android/gms/internal/ads/zzaif;)[B

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 189
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v3

    move-object/from16 v47, v0

    move-object v5, v2

    move-object v13, v3

    goto :goto_52

    :cond_6b
    move-object/from16 v47, v0

    move-object v5, v2

    goto :goto_52

    :cond_6c
    move/from16 v0, v68

    const v2, 0x62747274

    if-ne v4, v2, :cond_6d

    .line 190
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaip;->zzm(Lcom/google/android/gms/internal/ads/zzek;I)Lcom/google/android/gms/internal/ads/zzaid;

    move-result-object v0

    move-object/from16 v46, v0

    goto :goto_52

    :cond_6d
    const v2, 0x70617370

    if-ne v4, v2, :cond_6e

    const/16 v48, 0x8

    add-int/lit8 v7, v0, 0x8

    .line 191
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 192
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v0

    .line 193
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    move/from16 v63, v0

    move/from16 v11, v58

    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    move/from16 v14, v75

    const/4 v2, 0x3

    const/4 v7, -0x1

    const/16 v26, 0x1

    goto/16 :goto_60

    :cond_6e
    const/16 v48, 0x8

    const v2, 0x73763364

    if-ne v4, v2, :cond_71

    add-int/lit8 v7, v0, 0x8

    :goto_56
    sub-int v2, v7, v0

    if-ge v2, v12, :cond_70

    .line 194
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 195
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v2

    add-int/2addr v2, v7

    .line 196
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v3

    const v4, 0x70726f6a

    if-ne v3, v4, :cond_6f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v0

    .line 197
    invoke-static {v0, v7, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object/from16 v54, v0

    goto/16 :goto_52

    :cond_6f
    move v7, v2

    goto :goto_56

    :cond_70
    move/from16 v11, v58

    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    move/from16 v14, v75

    const/4 v2, 0x3

    const/4 v7, -0x1

    const/16 v54, 0x0

    goto/16 :goto_60

    :cond_71
    const v2, 0x73743364

    if-ne v4, v2, :cond_77

    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    const/4 v2, 0x3

    .line 199
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    if-nez v0, :cond_72

    .line 200
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v0

    if-eqz v0, :cond_76

    const/4 v9, 0x1

    if-eq v0, v9, :cond_75

    const/4 v9, 0x2

    if-eq v0, v9, :cond_74

    if-eq v0, v2, :cond_73

    :cond_72
    move/from16 v11, v58

    const/4 v7, -0x1

    goto/16 :goto_5a

    :cond_73
    move/from16 v80, v2

    move/from16 v11, v58

    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    move/from16 v14, v75

    goto/16 :goto_51

    :cond_74
    move/from16 v11, v58

    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    move/from16 v14, v75

    const/4 v7, -0x1

    const/16 v80, 0x2

    goto/16 :goto_60

    :cond_75
    move/from16 v11, v58

    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    move/from16 v14, v75

    const/4 v7, -0x1

    const/16 v80, 0x1

    goto/16 :goto_60

    :cond_76
    move/from16 v11, v58

    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    move/from16 v14, v75

    const/4 v7, -0x1

    const/16 v80, 0x0

    goto/16 :goto_60

    :cond_77
    const/4 v2, 0x3

    const v3, 0x61707643

    if-ne v4, v3, :cond_7c

    add-int/lit8 v7, v0, 0xc

    add-int/lit8 v0, v12, -0xc

    .line 201
    new-array v3, v0, [B

    .line 202
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    const/4 v5, 0x0

    .line 203
    invoke-virtual {v1, v3, v5, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 204
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzek;

    .line 205
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v6

    .line 206
    array-length v7, v6

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v4

    const/16 v9, 0x8

    mul-int/2addr v4, v9

    .line 207
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    const/4 v15, 0x1

    .line 208
    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    .line 209
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v4

    const/4 v6, 0x0

    :goto_57
    if-ge v6, v4, :cond_7b

    .line 210
    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    .line 211
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v7

    const/4 v8, 0x0

    :goto_58
    if-ge v8, v7, :cond_7a

    const/4 v10, 0x6

    .line 212
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 213
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v10

    .line 214
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    const/16 v11, 0xb

    .line 215
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    move/from16 v11, v58

    .line 216
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 217
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v13

    add-int/2addr v13, v9

    .line 218
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 219
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    const/4 v15, 0x1

    .line 220
    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    if-eqz v10, :cond_79

    .line 221
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v10

    .line 222
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    move-result v13

    .line 223
    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    .line 224
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    move-result v9

    .line 225
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    if-eq v15, v9, :cond_78

    const/4 v9, 0x2

    goto :goto_59

    :cond_78
    move v9, v15

    .line 226
    :goto_59
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v9

    .line 227
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    :cond_79
    add-int/2addr v8, v15

    move/from16 v58, v11

    const/16 v9, 0x8

    goto :goto_58

    :cond_7a
    move/from16 v11, v58

    const/4 v15, 0x1

    add-int/2addr v6, v15

    const/16 v9, 0x8

    goto :goto_57

    :cond_7b
    move/from16 v11, v58

    .line 228
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzk;->zzf:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzk;->zzg:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const-string v8, "video/apv"

    move-object v13, v0

    move v15, v4

    move v10, v6

    move v14, v7

    const/4 v7, -0x1

    move v6, v3

    move v3, v5

    move-object v5, v8

    move-object/from16 v8, v65

    goto/16 :goto_60

    :cond_7c
    move/from16 v11, v58

    const v0, 0x636f6c72

    const/4 v7, -0x1

    if-ne v4, v0, :cond_7e

    if-ne v10, v7, :cond_7e

    if-ne v6, v7, :cond_83

    .line 229
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v0

    const v3, 0x6e636c78

    if-eq v0, v3, :cond_7f

    const v3, 0x6e636c63

    if-ne v0, v3, :cond_7d

    goto :goto_5b

    .line 230
    :cond_7d
    const-string v3, "Unsupported color type: "

    .line 231
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfc;->zze(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BoxParsers"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    move v10, v6

    :cond_7e
    :goto_5a
    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    move/from16 v14, v75

    goto/16 :goto_60

    .line 232
    :cond_7f
    :goto_5b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v0

    .line 233
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v3

    const/4 v9, 0x2

    .line 234
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    const/16 v4, 0x13

    if-ne v12, v4, :cond_81

    .line 235
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_80

    move v12, v4

    const/4 v4, 0x1

    goto :goto_5c

    :cond_80
    move v12, v4

    :cond_81
    const/4 v4, 0x0

    .line 236
    :goto_5c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v0

    const/4 v9, 0x1

    if-eq v9, v4, :cond_82

    const/4 v4, 0x2

    goto :goto_5d

    :cond_82
    const/4 v4, 0x1

    :goto_5d
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v3

    move v10, v0

    move v6, v3

    move v14, v4

    move-object/from16 v8, v65

    move/from16 v3, v73

    move/from16 v15, v74

    goto :goto_60

    :cond_83
    move v10, v7

    goto :goto_5a

    :goto_5e
    add-int/lit8 v3, v12, -0x8

    const/16 v48, 0x8

    add-int/lit8 v0, v0, 0x8

    .line 237
    new-array v4, v3, [B

    const/4 v8, 0x0

    .line 238
    invoke-virtual {v1, v4, v8, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    if-eqz v13, :cond_84

    .line 239
    sget v3, Lcom/google/android/gms/internal/ads/zzfyc;->zzd:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfxz;

    .line 240
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzfxz;-><init>()V

    .line 241
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzfxz;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxz;

    .line 242
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfxz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxz;

    .line 243
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfxz;->zzi()Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v3

    goto :goto_5f

    .line 244
    :cond_84
    const-string v3, "initializationData must already be set from hvcC or avcC atom"

    .line 245
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    const/4 v3, 0x0

    .line 246
    :goto_5f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 247
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzew;->zza(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzew;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzew;->zza:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    move-object/from16 v62, v0

    move-object v13, v3

    move-object v5, v4

    goto :goto_5a

    :cond_85
    move-object v13, v3

    goto :goto_5a

    :goto_60
    add-int v12, v67, v12

    move/from16 v4, v66

    move-object/from16 v11, v69

    move/from16 v65, v70

    move-object/from16 v9, v71

    move-object/from16 v0, v72

    move/from16 v2, v80

    const/16 v20, 0x2

    const/16 v24, 0x1

    goto/16 :goto_2b

    :goto_61
    if-nez v5, :cond_86

    move-object/from16 v5, v35

    move/from16 v4, v55

    move/from16 v3, v64

    move-object/from16 v9, v71

    goto/16 :goto_64

    .line 248
    :cond_86
    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 249
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    move/from16 v3, v64

    .line 250
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 251
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v4, v62

    .line 252
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v61

    .line 253
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v60

    .line 254
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v63

    .line 255
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(F)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v55

    .line 256
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v5, v54

    .line 257
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaa([B)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v5, v80

    .line 258
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzag(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 259
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v5, v45

    .line 260
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzU(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v5, v43

    .line 261
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzV(I)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v8, v40

    .line 262
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzH(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v5, v35

    .line 263
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 264
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v14, v75

    .line 265
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 266
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    if-eqz v44, :cond_87

    .line 267
    invoke-virtual/range {v44 .. v44}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    goto :goto_62

    :cond_87
    const/4 v6, 0x0

    :goto_62
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzi;->zze([B)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v15, v74

    .line 268
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v6, v73

    .line 269
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 270
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v6

    .line 271
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzD(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzx;

    if-eqz v46, :cond_88

    invoke-static/range {v46 .. v46}, Lcom/google/android/gms/internal/ads/zzaid;->zza(Lcom/google/android/gms/internal/ads/zzaid;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgbf;->zzf(J)I

    move-result v6

    .line 272
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v46 .. v46}, Lcom/google/android/gms/internal/ads/zzaid;->zzb(Lcom/google/android/gms/internal/ads/zzaid;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgbf;->zzf(J)I

    move-result v6

    .line 273
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    goto :goto_63

    :cond_88
    if-eqz v47, :cond_89

    .line 274
    invoke-static/range {v47 .. v47}, Lcom/google/android/gms/internal/ads/zzaif;->zza(Lcom/google/android/gms/internal/ads/zzaif;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgbf;->zzf(J)I

    move-result v6

    .line 275
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v47 .. v47}, Lcom/google/android/gms/internal/ads/zzaif;->zzb(Lcom/google/android/gms/internal/ads/zzaif;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgbf;->zzf(J)I

    move-result v6

    .line 276
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 277
    :cond_89
    :goto_63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    move-object/from16 v9, v71

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :goto_64
    add-int v0, v27, v66

    .line 278
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    const/16 v24, 0x1

    add-int/lit8 v10, v28, 0x1

    move-object/from16 v0, p0

    move v15, v4

    move-object v6, v5

    move/from16 v2, v17

    move-object/from16 v12, v19

    move/from16 v8, v21

    move/from16 v43, v22

    move-object/from16 v13, v30

    move/from16 v14, v34

    move/from16 v7, v59

    move-object/from16 v11, v69

    const/16 v18, 0x10

    const/16 v20, 0x2

    const/16 v22, 0x1

    const/16 v24, 0x0

    const-wide v45, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, v1

    move v5, v3

    move-object/from16 v1, v56

    move-object/from16 v3, v57

    goto/16 :goto_19

    :cond_8a
    move-object/from16 v56, v1

    move/from16 v17, v2

    move-object/from16 v57, v3

    move/from16 v59, v7

    move-object/from16 v69, v11

    move-object/from16 v19, v12

    move-object/from16 v30, v13

    move/from16 v34, v14

    move/from16 v22, v43

    const/4 v2, 0x3

    const/4 v11, 0x4

    const v23, 0x54544d4c

    const v50, 0x74783367

    const v53, 0x77767474

    if-nez p5, :cond_92

    const v0, 0x65647473

    move-object/from16 v3, v57

    .line 279
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v0

    if-eqz v0, :cond_91

    const v1, 0x656c7374

    .line 280
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzez;->zzb(I)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object v0

    if-nez v0, :cond_8b

    const/16 v1, 0x8

    const/4 v7, 0x0

    const/4 v10, 0x2

    goto :goto_68

    .line 281
    :cond_8b
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v1, 0x8

    .line 282
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 283
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    move-result v4

    .line 284
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v5

    new-array v6, v5, [J

    new-array v7, v5, [J

    const/4 v8, 0x0

    :goto_65
    if-ge v8, v5, :cond_8f

    const/4 v15, 0x1

    if-ne v4, v15, :cond_8c

    .line 285
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzw()J

    move-result-wide v12

    goto :goto_66

    :cond_8c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v12

    :goto_66
    aput-wide v12, v6, v8

    if-ne v4, v15, :cond_8d

    .line 286
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    move-result-wide v12

    goto :goto_67

    :cond_8d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v10

    int-to-long v12, v10

    :goto_67
    aput-wide v12, v7, v8

    .line 287
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    move-result v10

    if-ne v10, v15, :cond_8e

    const/4 v10, 0x2

    .line 288
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    add-int/2addr v8, v15

    goto :goto_65

    .line 289
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 290
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    const/4 v10, 0x2

    .line 291
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    :goto_68
    if-eqz v7, :cond_90

    .line 292
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    .line 293
    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, [J

    move-object/from16 v46, v0

    move-object/from16 v47, v7

    goto :goto_6b

    :cond_90
    :goto_69
    const/16 v46, 0x0

    const/16 v47, 0x0

    goto :goto_6b

    :cond_91
    :goto_6a
    const/16 v1, 0x8

    const/4 v10, 0x2

    goto :goto_69

    :cond_92
    move-object/from16 v3, v57

    goto :goto_6a

    :goto_6b
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v0, :cond_93

    move-object/from16 v0, p7

    const/4 v7, 0x0

    const/16 v25, 0x0

    goto :goto_6f

    :cond_93
    invoke-static/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzain;->zza(Lcom/google/android/gms/internal/ads/zzain;)I

    move-result v4

    if-eqz v4, :cond_95

    new-instance v4, Lcom/google/android/gms/internal/ads/zzey;

    invoke-static/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzain;->zza(Lcom/google/android/gms/internal/ads/zzain;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzey;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v0, :cond_94

    const/4 v15, 0x1

    new-array v6, v15, [Lcom/google/android/gms/internal/ads/zzau;

    const/16 v25, 0x0

    aput-object v4, v6, v25

    .line 294
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v0

    goto :goto_6c

    :cond_94
    const/4 v15, 0x1

    const/16 v25, 0x0

    .line 295
    new-instance v0, Lcom/google/android/gms/internal/ads/zzav;

    new-array v6, v15, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v4, v6, v25

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 296
    invoke-direct {v0, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 297
    :goto_6c
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 298
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    :goto_6d
    move-object/from16 v42, v0

    goto :goto_6e

    :cond_95
    const/16 v25, 0x0

    goto :goto_6d

    :goto_6e
    new-instance v31, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-static/range {v33 .. v33}, Lcom/google/android/gms/internal/ads/zzain;->zzb(Lcom/google/android/gms/internal/ads/zzain;)I

    move-result v32

    move/from16 v33, v34

    invoke-static/range {v49 .. v49}, Lcom/google/android/gms/internal/ads/zzaih;->zzb(Lcom/google/android/gms/internal/ads/zzaih;)J

    move-result-wide v34

    invoke-static/range {v49 .. v49}, Lcom/google/android/gms/internal/ads/zzaih;->zza(Lcom/google/android/gms/internal/ads/zzaih;)J

    move-result-wide v40

    iget v0, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzd:I

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzaik;->zza:[Lcom/google/android/gms/internal/ads/zzaji;

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzaik;->zzc:I

    move/from16 v43, v0

    move-object/from16 v44, v4

    move/from16 v45, v5

    invoke-direct/range {v31 .. v47}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzz;I[Lcom/google/android/gms/internal/ads/zzaji;I[J[J)V

    move-object/from16 v0, p7

    move-object/from16 v7, v31

    .line 299
    :goto_6f
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzfur;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajh;

    if-eqz v4, :cond_96

    const v5, 0x6d646961

    .line 300
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v3

    .line 301
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x6d696e66

    .line 302
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, 0x7374626c

    .line 304
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzez;->zza(I)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v7, p1

    .line 306
    invoke-static {v4, v3, v7}, Lcom/google/android/gms/internal/ads/zzaip;->zze(Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzez;Lcom/google/android/gms/internal/ads/zzaeb;)Lcom/google/android/gms/internal/ads/zzajk;

    move-result-object v3

    move-object/from16 v4, v56

    .line 307
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_70
    const/16 v24, 0x1

    goto :goto_71

    :cond_96
    move-object/from16 v7, p1

    move-object/from16 v4, v56

    const v5, 0x6d646961

    const v6, 0x6d696e66

    const v8, 0x7374626c

    goto :goto_70

    :goto_71
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, p0

    move v15, v1

    move v2, v3

    move-object v1, v4

    move v7, v5

    move/from16 v20, v10

    move v10, v11

    move-object/from16 v12, v19

    move/from16 v22, v24

    move/from16 v24, v25

    move-object/from16 v13, v30

    move-object/from16 v11, v69

    const/16 v18, 0x10

    goto/16 :goto_0

    .line 308
    :cond_97
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v4, 0x0

    .line 309
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_98
    move-object v4, v1

    return-object v4
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x68646c72    # 4.3148E24f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzek;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzek;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzek;II)Landroid/util/Pair;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    sub-int v2, v1, p1

    .line 8
    .line 9
    move/from16 v4, p2

    .line 10
    .line 11
    if-ge v2, v4, :cond_11

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v5, 0x1

    .line 21
    const/4 v6, 0x0

    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    move v7, v5

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v7, v6

    .line 27
    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 28
    .line 29
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    const v8, 0x73696e66

    .line 37
    .line 38
    .line 39
    if-ne v7, v8, :cond_10

    .line 40
    .line 41
    add-int/lit8 v7, v1, 0x8

    .line 42
    .line 43
    const/4 v8, -0x1

    .line 44
    move v12, v6

    .line 45
    move v9, v8

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    :goto_2
    sub-int v13, v7, v1

    .line 49
    .line 50
    const/4 v14, 0x4

    .line 51
    if-ge v13, v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 61
    .line 62
    .line 63
    move-result v15

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const v3, 0x66726d61

    .line 67
    .line 68
    .line 69
    if-ne v15, v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    goto :goto_3

    .line 80
    :cond_1
    const v3, 0x7363686d

    .line 81
    .line 82
    .line 83
    if-ne v15, v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 86
    .line 87
    .line 88
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 89
    .line 90
    invoke-virtual {v0, v14, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    goto :goto_3

    .line 95
    :cond_2
    const v3, 0x73636869

    .line 96
    .line 97
    .line 98
    if-ne v15, v3, :cond_3

    .line 99
    .line 100
    move v9, v7

    .line 101
    move v12, v13

    .line 102
    :cond_3
    :goto_3
    add-int/2addr v7, v13

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    const/16 v16, 0x0

    .line 105
    .line 106
    const-string v3, "cenc"

    .line 107
    .line 108
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_6

    .line 113
    .line 114
    const-string v3, "cbc1"

    .line 115
    .line 116
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_6

    .line 121
    .line 122
    const-string v3, "cens"

    .line 123
    .line 124
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_6

    .line 129
    .line 130
    const-string v3, "cbcs"

    .line 131
    .line 132
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    move-object/from16 v3, v16

    .line 140
    .line 141
    goto/16 :goto_c

    .line 142
    .line 143
    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    .line 144
    .line 145
    move v3, v5

    .line 146
    goto :goto_5

    .line 147
    :cond_7
    move v3, v6

    .line 148
    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 149
    .line 150
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    if-eq v9, v8, :cond_8

    .line 154
    .line 155
    move v3, v5

    .line 156
    goto :goto_6

    .line 157
    :cond_8
    move v3, v6

    .line 158
    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 159
    .line 160
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    add-int/lit8 v3, v9, 0x8

    .line 164
    .line 165
    :goto_7
    sub-int v7, v3, v9

    .line 166
    .line 167
    if-ge v7, v12, :cond_d

    .line 168
    .line 169
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    const v13, 0x74656e63

    .line 181
    .line 182
    .line 183
    if-ne v8, v13, :cond_c

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 194
    .line 195
    .line 196
    if-nez v3, :cond_9

    .line 197
    .line 198
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 199
    .line 200
    .line 201
    move v14, v6

    .line 202
    move v15, v14

    .line 203
    goto :goto_8

    .line 204
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    and-int/lit16 v7, v3, 0xf0

    .line 209
    .line 210
    shr-int/2addr v7, v14

    .line 211
    and-int/lit8 v3, v3, 0xf

    .line 212
    .line 213
    move v15, v3

    .line 214
    move v14, v7

    .line 215
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-ne v3, v5, :cond_a

    .line 220
    .line 221
    move-object v3, v10

    .line 222
    move v10, v5

    .line 223
    goto :goto_9

    .line 224
    :cond_a
    move-object v3, v10

    .line 225
    move v10, v6

    .line 226
    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    const/16 v7, 0x10

    .line 231
    .line 232
    new-array v13, v7, [B

    .line 233
    .line 234
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 235
    .line 236
    .line 237
    if-eqz v10, :cond_b

    .line 238
    .line 239
    if-nez v12, :cond_b

    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    new-array v8, v7, [B

    .line 246
    .line 247
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 248
    .line 249
    .line 250
    move-object/from16 v16, v8

    .line 251
    .line 252
    :cond_b
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaji;

    .line 253
    .line 254
    move-object v8, v3

    .line 255
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 256
    .line 257
    .line 258
    move-object v3, v9

    .line 259
    goto :goto_a

    .line 260
    :cond_c
    move-object v8, v10

    .line 261
    add-int/2addr v3, v7

    .line 262
    goto :goto_7

    .line 263
    :cond_d
    move-object v8, v10

    .line 264
    move-object/from16 v3, v16

    .line 265
    .line 266
    :goto_a
    if-eqz v3, :cond_e

    .line 267
    .line 268
    goto :goto_b

    .line 269
    :cond_e
    move v5, v6

    .line 270
    :goto_b
    const-string v6, "tenc atom is mandatory"

    .line 271
    .line 272
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    sget-object v5, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    :goto_c
    if-nez v3, :cond_f

    .line 282
    .line 283
    goto :goto_d

    .line 284
    :cond_f
    return-object v3

    .line 285
    :cond_10
    :goto_d
    add-int/2addr v1, v2

    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_11
    const/16 v16, 0x0

    .line 289
    .line 290
    return-object v16
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzi;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzej;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    array-length v3, v2

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    mul-int/2addr p0, v2

    .line 23
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x6

    .line 36
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    const/16 v7, 0xc

    .line 48
    .line 49
    const/16 v8, 0xa

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x2

    .line 53
    if-ne v4, v10, :cond_2

    .line 54
    .line 55
    if-eqz v5, :cond_1

    .line 56
    .line 57
    if-eq p0, v6, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v8, v7

    .line 61
    :goto_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v5, v9

    .line 69
    move v4, v10

    .line 70
    :cond_2
    if-gt v4, v10, :cond_4

    .line 71
    .line 72
    if-eq p0, v5, :cond_3

    .line 73
    .line 74
    move v8, v2

    .line 75
    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_1
    const/16 v4, 0xd

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 87
    .line 88
    .line 89
    const/4 v5, 0x4

    .line 90
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const-string v8, "BoxParsers"

    .line 95
    .line 96
    if-eq v6, p0, :cond_5

    .line 97
    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Unsupported obu_type: "

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_6

    .line 128
    .line 129
    const-string p0, "Unsupported obu_extension_flag"

    .line 130
    .line 131
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 144
    .line 145
    .line 146
    if-eqz v6, :cond_8

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    const/16 v11, 0x7f

    .line 153
    .line 154
    if-gt v6, v11, :cond_7

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_7
    const-string p0, "Excessive obu_size"

    .line 158
    .line 159
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-eqz v11, :cond_9

    .line 179
    .line 180
    const-string p0, "Unsupported reduced_still_picture_header"

    .line 181
    .line 182
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    if-eqz v11, :cond_a

    .line 195
    .line 196
    const-string p0, "Unsupported timing_info_present_flag"

    .line 197
    .line 198
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0

    .line 206
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    if-eqz v11, :cond_b

    .line 211
    .line 212
    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 213
    .line 214
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :cond_b
    const/4 v8, 0x5

    .line 223
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    move v12, v9

    .line 228
    :goto_3
    const/4 v13, 0x7

    .line 229
    if-gt v12, v11, :cond_d

    .line 230
    .line 231
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 235
    .line 236
    .line 237
    move-result v14

    .line 238
    if-le v14, v13, :cond_c

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 241
    .line 242
    .line 243
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_d
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    add-int/2addr v7, p0

    .line 255
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 256
    .line 257
    .line 258
    add-int/2addr v5, p0

    .line 259
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_e

    .line 267
    .line 268
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 269
    .line 270
    .line 271
    :cond_e
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_f

    .line 279
    .line 280
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 281
    .line 282
    .line 283
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    if-eqz v7, :cond_10

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_10
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 291
    .line 292
    .line 293
    move-result v7

    .line 294
    if-lez v7, :cond_11

    .line 295
    .line 296
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-nez v7, :cond_11

    .line 301
    .line 302
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 303
    .line 304
    .line 305
    :cond_11
    if-eqz v5, :cond_12

    .line 306
    .line 307
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 308
    .line 309
    .line 310
    :cond_12
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-ne v6, v10, :cond_13

    .line 318
    .line 319
    if-eqz v3, :cond_14

    .line 320
    .line 321
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_13
    if-ne v6, p0, :cond_14

    .line 326
    .line 327
    goto :goto_6

    .line 328
    :cond_14
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_15

    .line 333
    .line 334
    move v9, p0

    .line 335
    :cond_15
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    if-eqz v3, :cond_1a

    .line 340
    .line 341
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-nez v9, :cond_18

    .line 354
    .line 355
    if-ne v3, p0, :cond_18

    .line 356
    .line 357
    if-ne v5, v4, :cond_17

    .line 358
    .line 359
    if-nez v2, :cond_16

    .line 360
    .line 361
    move v1, p0

    .line 362
    move v3, v1

    .line 363
    goto :goto_8

    .line 364
    :cond_16
    move v3, p0

    .line 365
    goto :goto_7

    .line 366
    :cond_17
    move v3, p0

    .line 367
    :cond_18
    move v4, v5

    .line 368
    :goto_7
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    :goto_8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 377
    .line 378
    .line 379
    if-ne v1, p0, :cond_19

    .line 380
    .line 381
    goto :goto_9

    .line 382
    :cond_19
    move p0, v10

    .line 383
    :goto_9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 384
    .line 385
    .line 386
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    .line 387
    .line 388
    .line 389
    move-result p0

    .line 390
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 391
    .line 392
    .line 393
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzE()S

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/16 v1, 0x2b

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x2d

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/lit8 v3, v3, -0x1

    .line 45
    .line 46
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    new-instance v1, Lcom/google/android/gms/internal/ads/zzav;

    .line 55
    .line 56
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfd;

    .line 57
    .line 58
    invoke-direct {v3, v2, p0}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(FF)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    new-array p0, p0, [Lcom/google/android/gms/internal/ads/zzau;

    .line 63
    .line 64
    aput-object v3, p0, v0

    .line 65
    .line 66
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :catch_0
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzek;I)Lcom/google/android/gms/internal/ads/zzaid;
    .locals 3

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaid;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaid;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzek;I)Lcom/google/android/gms/internal/ads/zzaif;
    .locals 9

    .line 1
    add-int/lit8 p1, p1, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaip;->zzh(Lcom/google/android/gms/internal/ads/zzek;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaip;->zzh(Lcom/google/android/gms/internal/ads/zzek;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzay;->zzd(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaip;->zzh(Lcom/google/android/gms/internal/ads/zzek;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    move-wide v4, v3

    .line 105
    new-array v3, p1, [B

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual {p0, v3, v6, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 109
    .line 110
    .line 111
    const-wide/16 p0, 0x0

    .line 112
    .line 113
    cmp-long v6, v4, p0

    .line 114
    .line 115
    const-wide/16 v7, -0x1

    .line 116
    .line 117
    if-gtz v6, :cond_4

    .line 118
    .line 119
    move-wide v4, v7

    .line 120
    :cond_4
    cmp-long p0, v0, p0

    .line 121
    .line 122
    if-lez p0, :cond_5

    .line 123
    .line 124
    move-wide v6, v0

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    move-wide v6, v7

    .line 127
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaif;

    .line 128
    .line 129
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(Ljava/lang/String;[BJJ)V

    .line 130
    .line 131
    .line 132
    return-object v1

    .line 133
    :cond_6
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaif;

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    const-wide/16 v4, -0x1

    .line 137
    .line 138
    move-wide v6, v4

    .line 139
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(Ljava/lang/String;[BJJ)V

    .line 140
    .line 141
    .line 142
    return-object v1
.end method

.method private static zzo()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static zzp(Lcom/google/android/gms/internal/ads/zzek;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzaik;I)V
    .locals 30
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const/4 v10, 0x1

    const/16 v11, 0x10

    add-int/lit8 v12, v2, 0x10

    .line 1
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    const/4 v12, 0x6

    const/16 v13, 0x8

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v15

    .line 3
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    const/4 v15, 0x0

    :goto_0
    const/high16 v16, 0x10000000

    const/16 v17, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/16 v20, 0x0

    if-eqz v15, :cond_1

    if-ne v15, v10, :cond_2

    :cond_1
    move/from16 v23, v8

    goto/16 :goto_2

    :cond_2
    if-ne v15, v8, :cond_4c

    .line 5
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzt()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v21

    .line 7
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v12, v14

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v14

    .line 9
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v15

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v21

    and-int/lit8 v22, v21, 0x1

    and-int/lit8 v21, v21, 0x2

    move/from16 v23, v8

    const/16 v8, 0x20

    if-nez v22, :cond_a

    if-ne v15, v13, :cond_3

    move/from16 v8, v17

    goto :goto_1

    :cond_3
    if-ne v15, v11, :cond_5

    if-eqz v21, :cond_4

    move/from16 v8, v16

    goto :goto_1

    :cond_4
    move/from16 v8, v23

    goto :goto_1

    :cond_5
    const/16 v11, 0x18

    if-ne v15, v11, :cond_7

    if-eqz v21, :cond_6

    const/high16 v8, 0x50000000

    goto :goto_1

    :cond_6
    const/16 v8, 0x15

    goto :goto_1

    :cond_7
    if-ne v15, v8, :cond_9

    if-eqz v21, :cond_8

    const/high16 v8, 0x60000000

    goto :goto_1

    :cond_8
    const/16 v8, 0x16

    goto :goto_1

    :cond_9
    const/4 v8, -0x1

    goto :goto_1

    :cond_a
    if-ne v15, v8, :cond_9

    move v8, v9

    .line 12
    :goto_1
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    move v11, v14

    move/from16 v14, v20

    goto :goto_3

    .line 13
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v8

    .line 14
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzn()I

    move-result v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    .line 16
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v14

    if-ne v15, v10, :cond_b

    .line 18
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    :cond_b
    move v11, v8

    const/4 v8, -0x1

    :goto_3
    const v15, 0x73616d72

    move/from16 v21, v13

    const v13, 0x69616d66

    const v9, 0x73617762

    if-ne v1, v13, :cond_c

    const/4 v11, -0x1

    const/4 v12, -0x1

    goto :goto_5

    :cond_c
    if-ne v1, v15, :cond_d

    const/16 v11, 0x1f40

    move v12, v11

    :goto_4
    move v11, v10

    goto :goto_5

    :cond_d
    if-ne v1, v9, :cond_e

    const/16 v1, 0x3e80

    move v12, v1

    move v1, v9

    goto :goto_4

    :cond_e
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v10

    const v13, 0x656e6361

    if-ne v1, v13, :cond_11

    .line 19
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaip;->zzj(Lcom/google/android/gms/internal/ads/zzek;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 20
    iget-object v13, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v6, :cond_f

    const/4 v6, 0x0

    goto :goto_6

    .line 21
    :cond_f
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    .line 22
    :goto_6
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzaik;->zza:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 23
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaji;

    aput-object v1, v9, p9

    :cond_10
    move v1, v13

    .line 24
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    :cond_11
    const v9, 0x61632d33

    const-string v13, "audio/mhm1"

    if-ne v1, v9, :cond_12

    const-string v1, "audio/ac3"

    goto/16 :goto_a

    :cond_12
    const v9, 0x65632d33

    if-ne v1, v9, :cond_13

    .line 25
    const-string v1, "audio/eac3"

    goto/16 :goto_a

    :cond_13
    const v9, 0x61632d34

    if-ne v1, v9, :cond_14

    const-string v1, "audio/ac4"

    goto/16 :goto_a

    :cond_14
    const v9, 0x64747363

    if-ne v1, v9, :cond_15

    const-string v1, "audio/vnd.dts"

    goto/16 :goto_a

    :cond_15
    const v9, 0x64747368

    if-eq v1, v9, :cond_2a

    const v9, 0x6474736c

    if-ne v1, v9, :cond_16

    goto/16 :goto_9

    :cond_16
    const v9, 0x64747365

    if-ne v1, v9, :cond_17

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_a

    :cond_17
    const v9, 0x64747378

    if-ne v1, v9, :cond_18

    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_a

    :cond_18
    if-ne v1, v15, :cond_19

    const-string v1, "audio/3gpp"

    goto/16 :goto_a

    :cond_19
    const v9, 0x73617762

    if-ne v1, v9, :cond_1a

    const-string v1, "audio/amr-wb"

    goto/16 :goto_a

    :cond_1a
    const v9, 0x736f7774

    const-string v15, "audio/raw"

    if-ne v1, v9, :cond_1b

    :goto_7
    move-object v1, v15

    move/from16 v8, v23

    goto/16 :goto_a

    :cond_1b
    const v9, 0x74776f73

    if-ne v1, v9, :cond_1c

    move-object v1, v15

    move/from16 v8, v16

    goto/16 :goto_a

    :cond_1c
    const v9, 0x6c70636d

    if-ne v1, v9, :cond_1e

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1d

    goto :goto_7

    :cond_1d
    move-object v1, v15

    goto/16 :goto_a

    :cond_1e
    const v9, 0x2e6d7032

    if-eq v1, v9, :cond_29

    const v9, 0x2e6d7033

    if-ne v1, v9, :cond_1f

    goto :goto_8

    :cond_1f
    const v9, 0x6d686131

    if-ne v1, v9, :cond_20

    const-string v1, "audio/mha1"

    goto :goto_a

    :cond_20
    const v9, 0x6d686d31

    if-ne v1, v9, :cond_21

    move-object v1, v13

    goto :goto_a

    :cond_21
    const v9, 0x616c6163

    if-ne v1, v9, :cond_22

    const-string v1, "audio/alac"

    goto :goto_a

    :cond_22
    const v9, 0x616c6177

    if-ne v1, v9, :cond_23

    const-string v1, "audio/g711-alaw"

    goto :goto_a

    :cond_23
    const v9, 0x756c6177

    if-ne v1, v9, :cond_24

    const-string v1, "audio/g711-mlaw"

    goto :goto_a

    :cond_24
    const v9, 0x4f707573

    if-ne v1, v9, :cond_25

    const-string v1, "audio/opus"

    goto :goto_a

    :cond_25
    const v9, 0x664c6143

    if-ne v1, v9, :cond_26

    const-string v1, "audio/flac"

    goto :goto_a

    :cond_26
    const v9, 0x6d6c7061

    if-ne v1, v9, :cond_27

    const-string v1, "audio/true-hd"

    goto :goto_a

    :cond_27
    const v9, 0x69616d66

    if-ne v1, v9, :cond_28

    const-string v1, "audio/iamf"

    goto :goto_a

    :cond_28
    const/4 v1, 0x0

    goto :goto_a

    :cond_29
    :goto_8
    const-string v1, "audio/mpeg"

    goto :goto_a

    :cond_2a
    :goto_9
    const-string v1, "audio/vnd.dts.hd"

    :goto_a
    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x0

    :goto_b
    sub-int v2, v10, p2

    if-ge v2, v3, :cond_49

    .line 26
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v2

    if-lez v2, :cond_2b

    const/4 v3, 0x1

    :goto_c
    move/from16 v26, v8

    goto :goto_d

    :cond_2b
    move/from16 v3, v20

    goto :goto_c

    .line 28
    :goto_d
    const-string v8, "childAtomSize must be positive"

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v3

    move-object/from16 p9, v9

    const v9, 0x6d686143

    if-ne v3, v9, :cond_2e

    add-int/lit8 v3, v10, 0x8

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    const/4 v3, 0x1

    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v8

    .line 33
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 34
    invoke-static {v1, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 35
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v20

    const-string v8, "mhm1.%02X"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    goto :goto_e

    .line 36
    :cond_2c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v20

    const-string v3, "mha1.%02X"

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 37
    :goto_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v3

    new-array v8, v3, [B

    move-object/from16 p9, v9

    move/from16 v9, v20

    .line 38
    invoke-virtual {v0, v8, v9, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    if-nez v15, :cond_2d

    .line 39
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    :goto_f
    move/from16 v27, v2

    move v2, v9

    :goto_10
    const/16 v19, 0x9

    :goto_11
    move-object/from16 v9, p9

    goto/16 :goto_20

    .line 40
    :cond_2d
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/zzfyc;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    goto :goto_f

    :cond_2e
    const v9, 0x6d686150

    if-ne v3, v9, :cond_31

    add-int/lit8 v3, v10, 0x8

    .line 41
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v3

    if-lez v3, :cond_30

    new-array v8, v3, [B

    const/4 v9, 0x0

    .line 43
    invoke-virtual {v0, v8, v9, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    if-nez v15, :cond_2f

    .line 44
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    goto :goto_f

    .line 45
    :cond_2f
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzfyc;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    move-object/from16 v9, p9

    move/from16 v27, v2

    :goto_12
    const/4 v2, 0x0

    const/16 v19, 0x9

    goto/16 :goto_20

    :cond_30
    move/from16 v27, v2

    :goto_13
    const/4 v2, 0x0

    goto :goto_10

    :cond_31
    const v9, 0x65736473

    if-eq v3, v9, :cond_42

    if-eqz p6, :cond_36

    const v9, 0x77617665

    if-ne v3, v9, :cond_36

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v3

    if-lt v3, v10, :cond_32

    const/4 v9, 0x1

    :goto_14
    move/from16 v27, v3

    const/4 v3, 0x0

    goto :goto_15

    :cond_32
    const/4 v9, 0x0

    goto :goto_14

    .line 46
    :goto_15
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    move/from16 v9, v27

    :goto_16
    sub-int v3, v9, v10

    if-ge v3, v2, :cond_35

    .line 47
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v3

    if-lez v3, :cond_33

    move/from16 v27, v2

    const/4 v2, 0x1

    goto :goto_17

    :cond_33
    move/from16 v27, v2

    const/4 v2, 0x0

    .line 49
    :goto_17
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(ZLjava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v2

    move/from16 v28, v3

    const v3, 0x65736473

    if-eq v2, v3, :cond_34

    add-int v9, v9, v28

    move/from16 v2, v27

    goto :goto_16

    :cond_34
    move v3, v9

    const/4 v2, 0x4

    :goto_18
    const/4 v8, -0x1

    const v9, 0x616c6163

    const/16 v19, 0x9

    goto/16 :goto_1b

    :cond_35
    move/from16 v27, v2

    const/4 v2, 0x4

    const/4 v3, -0x1

    goto :goto_18

    :cond_36
    move/from16 v27, v2

    const v2, 0x62747274

    if-ne v3, v2, :cond_37

    .line 51
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzaip;->zzm(Lcom/google/android/gms/internal/ads/zzek;I)Lcom/google/android/gms/internal/ads/zzaid;

    move-result-object v25

    :goto_19
    move-object/from16 v9, p9

    goto :goto_12

    :cond_37
    const v2, 0x64616333

    if-ne v3, v2, :cond_38

    add-int/lit8 v2, v10, 0x8

    .line 52
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacn;->zzc(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_13

    :cond_38
    const v2, 0x64656333

    if-ne v3, v2, :cond_39

    add-int/lit8 v2, v10, 0x8

    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacn;->zzd(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto/16 :goto_13

    :cond_39
    const v2, 0x64616334

    if-ne v3, v2, :cond_3a

    add-int/lit8 v2, v10, 0x8

    .line 56
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacr;->zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto/16 :goto_13

    :cond_3a
    const v2, 0x646d6c70

    if-ne v3, v2, :cond_3c

    if-lez v14, :cond_3b

    move-object/from16 v9, p9

    move v12, v14

    move/from16 v11, v23

    goto/16 :goto_12

    .line 58
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v2, 0x0

    const v8, 0x64647473

    if-eq v3, v8, :cond_3d

    const v8, 0x75647473

    if-ne v3, v8, :cond_3e

    :cond_3d
    const/4 v2, 0x4

    const v9, 0x616c6163

    const/16 v19, 0x9

    goto/16 :goto_1a

    :cond_3e
    const v8, 0x644f7073

    if-ne v3, v8, :cond_3f

    add-int/lit8 v3, v10, 0x8

    add-int/lit8 v8, v27, -0x8

    .line 60
    sget-object v9, Lcom/google/android/gms/internal/ads/zzaip;->zzb:[B

    .line 61
    array-length v15, v9

    add-int v2, v15, v8

    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 62
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 63
    invoke-virtual {v0, v2, v15, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 64
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaei;->zze([B)Ljava/util/List;

    move-result-object v15

    goto/16 :goto_19

    :cond_3f
    const v2, 0x64664c61

    if-ne v3, v2, :cond_40

    add-int/lit8 v2, v10, 0xc

    add-int/lit8 v3, v27, -0xc

    add-int/lit8 v8, v27, -0x8

    .line 65
    new-array v8, v8, [B

    const/16 v9, 0x66

    const/16 v20, 0x0

    .line 66
    aput-byte v9, v8, v20

    const/16 v9, 0x4c

    const/16 v24, 0x1

    .line 67
    aput-byte v9, v8, v24

    const/16 v9, 0x61

    .line 68
    aput-byte v9, v8, v23

    const/16 v9, 0x43

    .line 69
    aput-byte v9, v8, v17

    .line 70
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    const/4 v2, 0x4

    .line 71
    invoke-virtual {v0, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 72
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    goto/16 :goto_19

    :cond_40
    const/4 v2, 0x4

    const v9, 0x616c6163

    if-ne v3, v9, :cond_41

    add-int/lit8 v3, v10, 0xc

    add-int/lit8 v8, v27, -0xc

    .line 73
    new-array v11, v8, [B

    .line 74
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v0, v11, v3, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 76
    sget v3, Lcom/google/android/gms/internal/ads/zzdh;->zza:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzek;

    .line 77
    invoke-direct {v3, v11}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    const/16 v8, 0x9

    .line 78
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 79
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v8

    const/16 v12, 0x14

    .line 80
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 83
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 84
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 85
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    move-object/from16 v9, p9

    move v11, v3

    move v12, v8

    goto/16 :goto_12

    :cond_41
    const v8, 0x69616362

    const/16 v19, 0x9

    if-ne v3, v8, :cond_48

    add-int/lit8 v8, v10, 0x9

    .line 86
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzv()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Lcom/google/android/gms/internal/ads/zzgbf;->zzb(J)I

    move-result v3

    .line 88
    new-array v8, v3, [B

    const/4 v15, 0x0

    .line 89
    invoke-virtual {v0, v8, v15, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 90
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    move-object/from16 v9, p9

    const/4 v2, 0x0

    goto/16 :goto_20

    .line 91
    :goto_1a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzx;

    .line 92
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 93
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 94
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 95
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 96
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 97
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzH(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    .line 98
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 99
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto/16 :goto_1f

    :cond_42
    move/from16 v27, v2

    const/4 v2, 0x4

    const v9, 0x616c6163

    const/16 v19, 0x9

    move v3, v10

    const/4 v8, -0x1

    :goto_1b
    if-eq v3, v8, :cond_48

    .line 100
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaip;->zzn(Lcom/google/android/gms/internal/ads/zzek;I)Lcom/google/android/gms/internal/ads/zzaif;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaif;->zzc(Lcom/google/android/gms/internal/ads/zzaif;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaif;->zzd(Lcom/google/android/gms/internal/ads/zzaif;)[B

    move-result-object v3

    if-eqz v3, :cond_48

    const-string v15, "audio/vorbis"

    .line 101
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_46

    new-instance v15, Lcom/google/android/gms/internal/ads/zzek;

    .line 102
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    const/4 v8, 0x0

    .line 104
    :goto_1c
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v24

    if-lez v24, :cond_43

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zzf()I

    move-result v9

    const/16 v0, 0xff

    if-ne v9, v0, :cond_44

    .line 105
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    add-int/2addr v8, v0

    move-object/from16 v0, p0

    const/4 v2, 0x1

    const v9, 0x616c6163

    goto :goto_1c

    :cond_43
    const/16 v0, 0xff

    .line 106
    :cond_44
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v2

    add-int/2addr v8, v2

    const/4 v9, 0x0

    .line 107
    :goto_1d
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v2

    if-lez v2, :cond_45

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zzf()I

    move-result v2

    if-ne v2, v0, :cond_45

    const/4 v2, 0x1

    .line 108
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    add-int/2addr v9, v0

    goto :goto_1d

    :cond_45
    const/4 v2, 0x1

    .line 109
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v18

    add-int v9, v9, v18

    .line 110
    new-array v0, v8, [B

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v15

    const/4 v2, 0x0

    .line 111
    invoke-static {v3, v15, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v15, v8

    array-length v8, v3

    add-int/2addr v15, v9

    sub-int/2addr v8, v15

    .line 112
    new-array v9, v8, [B

    .line 113
    invoke-static {v3, v15, v9, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzfyc;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    goto/16 :goto_11

    :cond_46
    const/4 v2, 0x0

    const-string v0, "audio/mp4a-latm"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 116
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzack;->zza([B)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaci;->zza:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaci;->zzb:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaci;->zzc:Ljava/lang/String;

    goto :goto_1e

    :cond_47
    move-object/from16 v9, p9

    .line 117
    :goto_1e
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    move-result-object v15

    goto :goto_20

    :cond_48
    :goto_1f
    const/4 v2, 0x0

    goto/16 :goto_11

    :goto_20
    add-int v10, v10, v27

    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v20, v2

    move/from16 v8, v26

    goto/16 :goto_b

    :cond_49
    move/from16 v26, v8

    move-object/from16 p9, v9

    .line 118
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v0, :cond_4c

    if-eqz v1, :cond_4c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 119
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 120
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v9, p9

    .line 122
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 123
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 124
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v8, v26

    .line 125
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 126
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 127
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzH(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    .line 128
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    if-eqz v16, :cond_4a

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaif;->zza(Lcom/google/android/gms/internal/ads/zzaif;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzf(J)I

    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaif;->zzb(Lcom/google/android/gms/internal/ads/zzaif;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzf(J)I

    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    goto :goto_21

    :cond_4a
    if-eqz v25, :cond_4b

    .line 131
    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzaid;->zza(Lcom/google/android/gms/internal/ads/zzaid;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzf(J)I

    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzaid;->zzb(Lcom/google/android/gms/internal/ads/zzaid;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbf;->zzf(J)I

    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 134
    :cond_4b
    :goto_21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaik;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :cond_4c
    return-void
.end method
