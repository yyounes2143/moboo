.class public final Lcom/google/android/gms/internal/ads/zzelx;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzetu;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcp;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelx;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzb:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuv;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcuv;->zzb:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelx;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "slotname"

    .line 10
    .line 11
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "test_request"

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, -0x1

    .line 30
    if-eq v1, v4, :cond_1

    .line 31
    .line 32
    move v5, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v5, v3

    .line 35
    :goto_0
    const-string v6, "tag_for_child_directed_treatment"

    .line 36
    .line 37
    invoke-static {p1, v6, v1, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    .line 38
    .line 39
    .line 40
    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zza:I

    .line 41
    .line 42
    const/16 v5, 0x8

    .line 43
    .line 44
    if-lt v1, v5, :cond_3

    .line 45
    .line 46
    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 47
    .line 48
    if-eq v1, v4, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v2, v3

    .line 52
    :goto_1
    const-string v3, "tag_for_under_age_of_consent"

    .line 53
    .line 54
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfdd;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzl:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, "url"

    .line 60
    .line 61
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfdd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzv:Ljava/util/List;

    .line 65
    .line 66
    const-string v2, "neighboring_content_urls"

    .line 67
    .line 68
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfdd;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzc:Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/os/Bundle;

    .line 78
    .line 79
    new-instance v2, Ljava/util/HashSet;

    .line 80
    .line 81
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcv;->zzhL:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 82
    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ljava/lang/String;

    .line 92
    .line 93
    const-string v5, ","

    .line 94
    .line 95
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_4

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    const-string v0, "extras"

    .line 137
    .line 138
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfdd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcuv;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcuv;->zza:Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzelx;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 10
    .line 11
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfcp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 12
    .line 13
    iget v4, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzw:I

    .line 14
    .line 15
    const-string v5, "http_timeout_millis"

    .line 16
    .line 17
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v4, "slotname"

    .line 21
    .line 22
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcp;->zzo:Lcom/google/android/gms/internal/ads/zzfcc;

    .line 28
    .line 29
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfcc;->zza:I

    .line 30
    .line 31
    if-eqz v2, :cond_c

    .line 32
    .line 33
    const/4 v4, -0x1

    .line 34
    add-int/2addr v2, v4

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eq v2, v6, :cond_1

    .line 38
    .line 39
    if-eq v2, v5, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v2, "is_rewarded_interstitial"

    .line 43
    .line 44
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v2, "is_new_rewarded"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzelx;->zzb:J

    .line 54
    .line 55
    const-string v2, "start_signals_timestamp"

    .line 56
    .line 57
    invoke-virtual {v1, v2, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const-string v7, "is_sdk_preload"

    .line 65
    .line 66
    invoke-static {v1, v7, v6, v2}, Lcom/google/android/gms/internal/ads/zzfdd;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 70
    .line 71
    const-string v7, "yyyyMMdd"

    .line 72
    .line 73
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 74
    .line 75
    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 76
    .line 77
    .line 78
    iget-wide v7, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    .line 79
    .line 80
    new-instance v9, Ljava/util/Date;

    .line 81
    .line 82
    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-wide/16 v9, -0x1

    .line 90
    .line 91
    cmp-long v7, v7, v9

    .line 92
    .line 93
    const/4 v8, 0x0

    .line 94
    if-eqz v7, :cond_2

    .line 95
    .line 96
    move v7, v6

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    move v7, v8

    .line 99
    :goto_1
    const-string v9, "cust_age"

    .line 100
    .line 101
    invoke-static {v1, v9, v2, v7}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzc:Landroid/os/Bundle;

    .line 105
    .line 106
    const-string v7, "extras"

    .line 107
    .line 108
    invoke-static {v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzfdd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    .line 112
    .line 113
    if-eq v2, v4, :cond_3

    .line 114
    .line 115
    move v7, v6

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    move v7, v8

    .line 118
    :goto_2
    const-string v9, "cust_gender"

    .line 119
    .line 120
    invoke-static {v1, v9, v2, v7}, Lcom/google/android/gms/internal/ads/zzfdd;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    .line 121
    .line 122
    .line 123
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    .line 124
    .line 125
    const-string v7, "kw"

    .line 126
    .line 127
    invoke-static {v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzfdd;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    .line 131
    .line 132
    if-eq v2, v4, :cond_4

    .line 133
    .line 134
    move v7, v6

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    move v7, v8

    .line 137
    :goto_3
    const-string v9, "tag_for_child_directed_treatment"

    .line 138
    .line 139
    invoke-static {v1, v9, v2, v7}, Lcom/google/android/gms/internal/ads/zzfdd;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    .line 140
    .line 141
    .line 142
    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    .line 143
    .line 144
    if-eqz v2, :cond_5

    .line 145
    .line 146
    const-string v2, "test_request"

    .line 147
    .line 148
    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    :cond_5
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzy:I

    .line 152
    .line 153
    const-string v7, "ppt_p13n"

    .line 154
    .line 155
    invoke-virtual {v1, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zza:I

    .line 159
    .line 160
    if-lt v2, v5, :cond_6

    .line 161
    .line 162
    iget-boolean v7, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzh:Z

    .line 163
    .line 164
    if-eqz v7, :cond_6

    .line 165
    .line 166
    move v7, v6

    .line 167
    goto :goto_4

    .line 168
    :cond_6
    move v7, v8

    .line 169
    :goto_4
    const-string v9, "d_imp_hdr"

    .line 170
    .line 171
    invoke-static {v1, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzfdd;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    .line 172
    .line 173
    .line 174
    iget-object v7, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzi:Ljava/lang/String;

    .line 175
    .line 176
    if-lt v2, v5, :cond_7

    .line 177
    .line 178
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-nez v5, :cond_7

    .line 183
    .line 184
    move v5, v6

    .line 185
    goto :goto_5

    .line 186
    :cond_7
    move v5, v8

    .line 187
    :goto_5
    const-string v9, "ppid"

    .line 188
    .line 189
    invoke-static {v1, v9, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    .line 193
    .line 194
    if-eqz v5, :cond_8

    .line 195
    .line 196
    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 201
    .line 202
    mul-float/2addr v7, v9

    .line 203
    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    .line 204
    .line 205
    .line 206
    move-result-wide v9

    .line 207
    const-wide/16 v11, 0x3e8

    .line 208
    .line 209
    mul-long/2addr v9, v11

    .line 210
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    .line 211
    .line 212
    .line 213
    move-result-wide v11

    .line 214
    const-wide v13, 0x416312d000000000L    # 1.0E7

    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    mul-double/2addr v11, v13

    .line 220
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    .line 221
    .line 222
    .line 223
    move-result-wide v15

    .line 224
    mul-double/2addr v13, v15

    .line 225
    new-instance v5, Landroid/os/Bundle;

    .line 226
    .line 227
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v15, "radius"

    .line 231
    .line 232
    invoke-virtual {v5, v15, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 233
    .line 234
    .line 235
    const-string v7, "lat"

    .line 236
    .line 237
    double-to-long v11, v11

    .line 238
    invoke-virtual {v5, v7, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 239
    .line 240
    .line 241
    const-string v7, "long"

    .line 242
    .line 243
    double-to-long v11, v13

    .line 244
    invoke-virtual {v5, v7, v11, v12}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 245
    .line 246
    .line 247
    const-string v7, "time"

    .line 248
    .line 249
    invoke-virtual {v5, v7, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 250
    .line 251
    .line 252
    const-string v7, "uule"

    .line 253
    .line 254
    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 255
    .line 256
    .line 257
    :cond_8
    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzl:Ljava/lang/String;

    .line 258
    .line 259
    const-string v7, "url"

    .line 260
    .line 261
    invoke-static {v1, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzv:Ljava/util/List;

    .line 265
    .line 266
    const-string v7, "neighboring_content_urls"

    .line 267
    .line 268
    invoke-static {v1, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 269
    .line 270
    .line 271
    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzn:Landroid/os/Bundle;

    .line 272
    .line 273
    const-string v7, "custom_targeting"

    .line 274
    .line 275
    invoke-static {v1, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzb(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    .line 277
    .line 278
    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzo:Ljava/util/List;

    .line 279
    .line 280
    const-string v7, "category_exclusions"

    .line 281
    .line 282
    invoke-static {v1, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzd(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 283
    .line 284
    .line 285
    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 286
    .line 287
    const-string v7, "request_agent"

    .line 288
    .line 289
    invoke-static {v1, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzq:Ljava/lang/String;

    .line 293
    .line 294
    const-string v7, "request_pkg"

    .line 295
    .line 296
    invoke-static {v1, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-boolean v5, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    .line 300
    .line 301
    const/4 v7, 0x7

    .line 302
    if-lt v2, v7, :cond_9

    .line 303
    .line 304
    move v7, v6

    .line 305
    goto :goto_6

    .line 306
    :cond_9
    move v7, v8

    .line 307
    :goto_6
    const-string v9, "is_designed_for_families"

    .line 308
    .line 309
    invoke-static {v1, v9, v5, v7}, Lcom/google/android/gms/internal/ads/zzfdd;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 310
    .line 311
    .line 312
    const/16 v5, 0x8

    .line 313
    .line 314
    if-lt v2, v5, :cond_b

    .line 315
    .line 316
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 317
    .line 318
    if-eq v2, v4, :cond_a

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_a
    move v6, v8

    .line 322
    :goto_7
    const-string v4, "tag_for_under_age_of_consent"

    .line 323
    .line 324
    invoke-static {v1, v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzfdd;->zze(Landroid/os/Bundle;Ljava/lang/String;IZ)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzu:Ljava/lang/String;

    .line 328
    .line 329
    const-string v3, "max_ad_content_rating"

    .line 330
    .line 331
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfdd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    :cond_b
    return-void

    .line 335
    :cond_c
    const/4 v1, 0x0

    .line 336
    throw v1
.end method
