.class public final Lcom/google/android/gms/internal/ads/zzgd;
.super Lcom/google/android/gms/internal/ads/zzfz;
.source "Proguard"


# instance fields
.field private final zza:Landroid/content/ContentResolver;

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/io/FileInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:J

.field private zzf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgd;->zza:Landroid/content/ContentResolver;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgc;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zze:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-eqz v2, :cond_4

    .line 13
    .line 14
    const-wide/16 v4, -0x1

    .line 15
    .line 16
    cmp-long v2, v0, v4

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    int-to-long v6, p3

    .line 21
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    long-to-int p3, v0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzd:Ljava/io/FileInputStream;

    .line 30
    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    if-ne p1, v3, :cond_2

    .line 38
    .line 39
    return v3

    .line 40
    :cond_2
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgd;->zze:J

    .line 41
    .line 42
    cmp-long v0, p2, v4

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    int-to-long v0, p1

    .line 47
    sub-long/2addr p2, v0

    .line 48
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgd;->zze:J

    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzg(I)V

    .line 51
    .line 52
    .line 53
    return p1

    .line 54
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgc;

    .line 55
    .line 56
    const/16 p3, 0x7d0

    .line 57
    .line 58
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 59
    .line 60
    .line 61
    throw p2

    .line 62
    :cond_4
    return v3
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgl;)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgc;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzgl;->zza:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {v4}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzgd;->zzb:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzi(Lcom/google/android/gms/internal/ads/zzgl;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const-string v6, "content"

    .line 22
    .line 23
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    new-instance v5, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    .line 35
    .line 36
    invoke-virtual {v5, v6, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzgd;->zza:Landroid/content/ContentResolver;

    .line 40
    .line 41
    const-string v7, "*/*"

    .line 42
    .line 43
    invoke-virtual {v6, v4, v7, v5}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const/16 v5, 0x7d0

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :catch_1
    move-exception v0

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzgd;->zza:Landroid/content/ContentResolver;

    .line 57
    .line 58
    const-string v6, "r"

    .line 59
    .line 60
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :goto_0
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzgd;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 65
    .line 66
    if-eqz v5, :cond_b

    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    new-instance v4, Ljava/io/FileInputStream;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 79
    .line 80
    .line 81
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzgd;->zzd:Ljava/io/FileInputStream;

    .line 82
    .line 83
    const-wide/16 v8, -0x1

    .line 84
    .line 85
    cmp-long v10, v6, v8

    .line 86
    .line 87
    const/16 v11, 0x7d8

    .line 88
    .line 89
    const/4 v12, 0x0

    .line 90
    if-eqz v10, :cond_2

    .line 91
    .line 92
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzgl;->zze:J

    .line 93
    .line 94
    cmp-long v13, v13, v6

    .line 95
    .line 96
    if-gtz v13, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgc;

    .line 100
    .line 101
    invoke-direct {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 106
    .line 107
    .line 108
    move-result-wide v13

    .line 109
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzgl;->zze:J

    .line 110
    .line 111
    move-wide/from16 v16, v6

    .line 112
    .line 113
    add-long v5, v13, v2

    .line 114
    .line 115
    invoke-virtual {v4, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    sub-long/2addr v5, v13

    .line 120
    cmp-long v2, v5, v2

    .line 121
    .line 122
    if-nez v2, :cond_a

    .line 123
    .line 124
    const-wide/16 v2, 0x0

    .line 125
    .line 126
    if-nez v10, :cond_5

    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    .line 133
    .line 134
    .line 135
    move-result-wide v5

    .line 136
    cmp-long v10, v5, v2

    .line 137
    .line 138
    if-nez v10, :cond_3

    .line 139
    .line 140
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzgd;->zze:J

    .line 141
    .line 142
    move-wide v5, v8

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->position()J

    .line 145
    .line 146
    .line 147
    move-result-wide v13

    .line 148
    sub-long/2addr v5, v13

    .line 149
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzgd;->zze:J

    .line 150
    .line 151
    cmp-long v2, v5, v2

    .line 152
    .line 153
    if-ltz v2, :cond_4

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgc;

    .line 157
    .line 158
    invoke-direct {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_5
    sub-long v5, v16, v5

    .line 163
    .line 164
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzgd;->zze:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgc; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    cmp-long v2, v5, v2

    .line 167
    .line 168
    if-ltz v2, :cond_9

    .line 169
    .line 170
    :goto_2
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzgl;->zzf:J

    .line 171
    .line 172
    cmp-long v4, v2, v8

    .line 173
    .line 174
    if-eqz v4, :cond_7

    .line 175
    .line 176
    cmp-long v7, v5, v8

    .line 177
    .line 178
    if-nez v7, :cond_6

    .line 179
    .line 180
    move-wide v5, v2

    .line 181
    goto :goto_3

    .line 182
    :cond_6
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 183
    .line 184
    .line 185
    move-result-wide v5

    .line 186
    :goto_3
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzgd;->zze:J

    .line 187
    .line 188
    :cond_7
    const/4 v15, 0x1

    .line 189
    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzgd;->zzf:Z

    .line 190
    .line 191
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzj(Lcom/google/android/gms/internal/ads/zzgl;)V

    .line 192
    .line 193
    .line 194
    if-eqz v4, :cond_8

    .line 195
    .line 196
    return-wide v2

    .line 197
    :cond_8
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgd;->zze:J

    .line 198
    .line 199
    return-wide v2

    .line 200
    :cond_9
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgc;

    .line 201
    .line 202
    invoke-direct {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 203
    .line 204
    .line 205
    throw v0

    .line 206
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgc;

    .line 207
    .line 208
    invoke-direct {v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgc;

    .line 213
    .line 214
    new-instance v2, Ljava/io/IOException;

    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v5, "Could not open file descriptor for: "

    .line 226
    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgc; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    .line 239
    .line 240
    const/16 v5, 0x7d0

    .line 241
    .line 242
    :try_start_2
    invoke-direct {v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 243
    .line 244
    .line 245
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgc; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    :catch_2
    move-exception v0

    .line 247
    :goto_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgc;

    .line 248
    .line 249
    instance-of v3, v0, Ljava/io/FileNotFoundException;

    .line 250
    .line 251
    const/4 v15, 0x1

    .line 252
    if-eq v15, v3, :cond_c

    .line 253
    .line 254
    move v3, v5

    .line 255
    goto :goto_5

    .line 256
    :cond_c
    const/16 v3, 0x7d5

    .line 257
    .line 258
    :goto_5
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 259
    .line 260
    .line 261
    throw v2

    .line 262
    :goto_6
    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgc;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzb:Landroid/net/Uri;

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzd:Ljava/io/FileInputStream;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_4

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_3

    .line 19
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzd:Ljava/io/FileInputStream;

    .line 20
    .line 21
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_7

    .line 31
    :catch_1
    move-exception v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzf:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzf:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfz;->zzh()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :goto_2
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgc;

    .line 46
    .line 47
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 48
    .line 49
    .line 50
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    :try_start_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgc;

    .line 52
    .line 53
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 54
    .line 55
    .line 56
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzd:Ljava/io/FileInputStream;

    .line 58
    .line 59
    :try_start_4
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_5

    .line 67
    :catch_2
    move-exception v3

    .line 68
    goto :goto_6

    .line 69
    :cond_3
    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzf:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzf:Z

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfz;->zzh()V

    .line 78
    .line 79
    .line 80
    :cond_4
    throw v3

    .line 81
    :goto_6
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgc;

    .line 82
    .line 83
    invoke-direct {v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(Ljava/io/IOException;I)V

    .line 84
    .line 85
    .line 86
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 87
    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzc:Landroid/content/res/AssetFileDescriptor;

    .line 88
    .line 89
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzf:Z

    .line 90
    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzgd;->zzf:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfz;->zzh()V

    .line 96
    .line 97
    .line 98
    :cond_5
    throw v1
.end method
