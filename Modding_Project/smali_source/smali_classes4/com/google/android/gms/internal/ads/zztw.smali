.class public final Lcom/google/android/gms/internal/ads/zztw;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MediaCodecUtil.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zztw;->zzb:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zztc;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    const-string v0, "audio/raw"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zztw;->zzd(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/google/android/gms/internal/ads/zztc;

    .line 21
    .line 22
    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzz;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "audio/eac3-joc"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "audio/eac3"

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string v1, "video/dolby-vision"

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/16 v1, 0x10

    .line 37
    .line 38
    if-eq p0, v1, :cond_5

    .line 39
    .line 40
    const/16 v1, 0x100

    .line 41
    .line 42
    if-ne p0, v1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v1, 0x200

    .line 46
    .line 47
    if-ne p0, v1, :cond_2

    .line 48
    .line 49
    const-string p0, "video/avc"

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    const/16 v1, 0x400

    .line 53
    .line 54
    if-eq p0, v1, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const-string p0, "video/av01"

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_4
    :goto_0
    const-string p0, "video/mv-hevc"

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_5

    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return-object p0

    .line 70
    :cond_5
    :goto_1
    const-string p0, "video/hevc"

    .line 71
    .line 72
    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztw;->zzb(Lcom/google/android/gms/internal/ads/zzz;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztl;->zza(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static declared-synchronized zzd(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    const-class v1, Lcom/google/android/gms/internal/ads/zztw;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zztp;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztp;-><init>(Ljava/lang/String;ZZ)V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zztw;->zzb:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    monitor-exit v1

    .line 20
    return-object v3

    .line 21
    :cond_0
    :try_start_1
    const-string v3, "video/mv-hevc"

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    new-instance v4, Lcom/google/android/gms/internal/ads/zztt;

    .line 28
    .line 29
    invoke-direct {v4, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zztt;-><init>(ZZZ)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zztw;->zzg(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zztr;)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v4, 0x17

    .line 48
    .line 49
    if-gt p1, v4, :cond_1

    .line 50
    .line 51
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztv;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zztw;->zzg(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zztr;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/google/android/gms/internal/ads/zztc;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v5, "MediaCodecList API didn\'t list secure decoder for: "

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, ". Assuming: "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string v4, "MediaCodecUtil"

    .line 101
    .line 102
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    move-object p0, v0

    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_1
    :goto_0
    const-string p1, "audio/raw"

    .line 111
    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    const/4 p1, 0x1

    .line 117
    if-eqz p0, :cond_3

    .line 118
    .line 119
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v4, 0x1a

    .line 122
    .line 123
    if-ge p0, v4, :cond_2

    .line 124
    .line 125
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 126
    .line 127
    const-string v4, "R9"

    .line 128
    .line 129
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_2

    .line 134
    .line 135
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-ne p0, p1, :cond_2

    .line 140
    .line 141
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Lcom/google/android/gms/internal/ads/zztc;

    .line 146
    .line 147
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 148
    .line 149
    const-string v4, "OMX.MTK.AUDIO.DECODER.RAW"

    .line 150
    .line 151
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eqz p0, :cond_2

    .line 156
    .line 157
    const-string v4, "OMX.google.raw.decoder"

    .line 158
    .line 159
    const-string v5, "audio/raw"

    .line 160
    .line 161
    const-string v6, "audio/raw"

    .line 162
    .line 163
    const/4 v11, 0x0

    .line 164
    const/4 v12, 0x0

    .line 165
    const/4 v7, 0x0

    .line 166
    const/4 v8, 0x0

    .line 167
    const/4 v9, 0x1

    .line 168
    const/4 v10, 0x0

    .line 169
    invoke-static/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zztc;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zztc;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zztn;

    .line 177
    .line 178
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztn;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zztw;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztu;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 185
    .line 186
    const/16 v4, 0x20

    .line 187
    .line 188
    if-ge p0, v4, :cond_4

    .line 189
    .line 190
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    if-le p0, p1, :cond_4

    .line 195
    .line 196
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    check-cast p0, Lcom/google/android/gms/internal/ads/zztc;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 203
    .line 204
    const-string p1, "OMX.qti.audio.decoder.flac"

    .line 205
    .line 206
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-eqz p0, :cond_4

    .line 211
    .line 212
    invoke-interface {p2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    check-cast p0, Lcom/google/android/gms/internal/ads/zztc;

    .line 217
    .line 218
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfyc;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .line 227
    .line 228
    monitor-exit v1

    .line 229
    return-object p0

    .line 230
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    throw p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/gms/internal/ads/zztl;->zza(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztw;->zzc(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget p1, Lcom/google/android/gms/internal/ads/zzfyc;->zzd:I

    .line 12
    .line 13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfxz;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfxz;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfxz;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxz;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfxz;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxz;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxz;->zzi()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzz;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzto;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zztw;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztu;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zztr;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "secure-playback"

    .line 6
    .line 7
    const-string v4, "tunneled-playback"

    .line 8
    .line 9
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zztp;->zza:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztr;->zza()I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztr;->zze()Z

    .line 21
    .line 22
    .line 23
    move-result v16

    .line 24
    const/16 v17, 0x0

    .line 25
    .line 26
    move/from16 v9, v17

    .line 27
    .line 28
    :goto_0
    if-ge v9, v7, :cond_1d

    .line 29
    .line 30
    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/ads/zztr;->zzb(I)Landroid/media/MediaCodecInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v11, 0x1d

    .line 37
    .line 38
    if-lt v10, v11, :cond_0

    .line 39
    .line 40
    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/Wwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/MediaCodecInfo;)Z

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    if-eqz v12, :cond_0

    .line 45
    .line 46
    move/from16 v19, v7

    .line 47
    .line 48
    move v1, v9

    .line 49
    goto/16 :goto_d

    .line 50
    .line 51
    :cond_0
    move v12, v7

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    goto/16 :goto_f

    .line 55
    .line 56
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    .line 61
    .line 62
    .line 63
    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    if-nez v13, :cond_1

    .line 65
    .line 66
    const-string v13, ".secure"

    .line 67
    .line 68
    if-nez v16, :cond_2

    .line 69
    .line 70
    :try_start_1
    invoke-virtual {v7, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    if-nez v14, :cond_1

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_1
    :goto_2
    move v1, v9

    .line 78
    move/from16 v19, v12

    .line 79
    .line 80
    goto/16 :goto_d

    .line 81
    .line 82
    :cond_2
    :goto_3
    const/16 v14, 0x18

    .line 83
    .line 84
    if-ge v10, v14, :cond_4

    .line 85
    .line 86
    const-string v14, "OMX.SEC.aac.dec"

    .line 87
    .line 88
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v14

    .line 92
    if-nez v14, :cond_3

    .line 93
    .line 94
    const-string v14, "OMX.Exynos.AAC.Decoder"

    .line 95
    .line 96
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    if-eqz v14, :cond_4

    .line 101
    .line 102
    :cond_3
    const-string v14, "samsung"

    .line 103
    .line 104
    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    if-eqz v14, :cond_4

    .line 111
    .line 112
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 113
    .line 114
    const-string v15, "zeroflte"

    .line 115
    .line 116
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    if-nez v15, :cond_1

    .line 121
    .line 122
    const-string v15, "zerolte"

    .line 123
    .line 124
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    if-nez v15, :cond_1

    .line 129
    .line 130
    const-string v15, "zenlte"

    .line 131
    .line 132
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    if-nez v15, :cond_1

    .line 137
    .line 138
    const-string v15, "SC-05G"

    .line 139
    .line 140
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-nez v15, :cond_1

    .line 145
    .line 146
    const-string v15, "marinelteatt"

    .line 147
    .line 148
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    if-nez v15, :cond_1

    .line 153
    .line 154
    const-string v15, "404SC"

    .line 155
    .line 156
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    if-nez v15, :cond_1

    .line 161
    .line 162
    const-string v15, "SC-04G"

    .line 163
    .line 164
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-nez v15, :cond_1

    .line 169
    .line 170
    const-string v15, "SCV31"

    .line 171
    .line 172
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    if-nez v14, :cond_1

    .line 177
    .line 178
    :cond_4
    const/16 v14, 0x17

    .line 179
    .line 180
    if-gt v10, v14, :cond_5

    .line 181
    .line 182
    const-string v10, "audio/eac3-joc"

    .line 183
    .line 184
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-eqz v10, :cond_5

    .line 189
    .line 190
    const-string v10, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 191
    .line 192
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    if-nez v10, :cond_1

    .line 197
    .line 198
    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    array-length v15, v10

    .line 203
    move/from16 v14, v17

    .line 204
    .line 205
    :goto_4
    if-ge v14, v15, :cond_7

    .line 206
    .line 207
    aget-object v5, v10, v14

    .line 208
    .line 209
    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v18

    .line 213
    if-eqz v18, :cond_6

    .line 214
    .line 215
    goto/16 :goto_6

    .line 216
    .line 217
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_7
    const-string v5, "video/dolby-vision"

    .line 221
    .line 222
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_b

    .line 227
    .line 228
    const-string v5, "OMX.MS.HEVCDV.Decoder"

    .line 229
    .line 230
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_8

    .line 235
    .line 236
    const-string v5, "video/hevcdv"

    .line 237
    .line 238
    goto/16 :goto_6

    .line 239
    .line 240
    :cond_8
    const-string v5, "OMX.RTK.video.decoder"

    .line 241
    .line 242
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-nez v5, :cond_a

    .line 247
    .line 248
    const-string v5, "OMX.realtek.video.decoder.tunneled"

    .line 249
    .line 250
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_9

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_9
    const/4 v5, 0x0

    .line 258
    goto :goto_6

    .line 259
    :cond_a
    :goto_5
    const-string v5, "video/dv_hevc"

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_b
    const-string v5, "video/mv-hevc"

    .line 263
    .line 264
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_d

    .line 269
    .line 270
    const-string v5, "c2.qti.mvhevc.decoder"

    .line 271
    .line 272
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    if-nez v5, :cond_c

    .line 277
    .line 278
    const-string v5, "c2.qti.mvhevc.decoder.secure"

    .line 279
    .line 280
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_9

    .line 285
    .line 286
    :cond_c
    const-string v5, "video/x-mvhevc"

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_d
    const-string v5, "audio/alac"

    .line 290
    .line 291
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_e

    .line 296
    .line 297
    const-string v5, "OMX.lge.alac.decoder"

    .line 298
    .line 299
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-eqz v5, :cond_e

    .line 304
    .line 305
    const-string v5, "audio/x-lg-alac"

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_e
    const-string v5, "audio/flac"

    .line 309
    .line 310
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-eqz v5, :cond_f

    .line 315
    .line 316
    const-string v5, "OMX.lge.flac.decoder"

    .line 317
    .line 318
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_f

    .line 323
    .line 324
    const-string v5, "audio/x-lg-flac"

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_f
    const-string v5, "audio/ac3"

    .line 328
    .line 329
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_9

    .line 334
    .line 335
    const-string v5, "OMX.lge.ac3.decoder"

    .line 336
    .line 337
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-eqz v5, :cond_9

    .line 342
    .line 343
    const-string v5, "audio/lg-ac3"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    .line 345
    :goto_6
    if-eqz v5, :cond_1

    .line 346
    .line 347
    :try_start_2
    invoke-virtual {v0, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 348
    .line 349
    .line 350
    move-result-object v10

    .line 351
    invoke-interface {v2, v4, v5, v10}, Lcom/google/android/gms/internal/ads/zztr;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    invoke-interface {v2, v4, v5, v10}, Lcom/google/android/gms/internal/ads/zztr;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 356
    .line 357
    .line 358
    move-result v15

    .line 359
    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zztp;->zzc:Z

    .line 360
    .line 361
    if-nez v11, :cond_10

    .line 362
    .line 363
    if-nez v15, :cond_1

    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_10
    if-nez v14, :cond_11

    .line 367
    .line 368
    goto/16 :goto_2

    .line 369
    .line 370
    :cond_11
    :goto_7
    invoke-interface {v2, v3, v5, v10}, Lcom/google/android/gms/internal/ads/zztr;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    invoke-interface {v2, v3, v5, v10}, Lcom/google/android/gms/internal/ads/zztr;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 375
    .line 376
    .line 377
    move-result v14

    .line 378
    iget-boolean v15, v1, Lcom/google/android/gms/internal/ads/zztp;->zzb:Z

    .line 379
    .line 380
    if-nez v15, :cond_12

    .line 381
    .line 382
    if-nez v14, :cond_1

    .line 383
    .line 384
    :cond_12
    if-eqz v15, :cond_13

    .line 385
    .line 386
    if-eqz v11, :cond_1

    .line 387
    .line 388
    const/4 v11, 0x1

    .line 389
    :cond_13
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 390
    .line 391
    const/16 v1, 0x1d

    .line 392
    .line 393
    if-lt v14, v1, :cond_14

    .line 394
    .line 395
    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/Wwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/MediaCodecInfo;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    move/from16 v19, v12

    .line 400
    .line 401
    goto :goto_9

    .line 402
    :catch_1
    move-exception v0

    .line 403
    move-object/from16 v21, v7

    .line 404
    .line 405
    move v1, v9

    .line 406
    move/from16 v19, v12

    .line 407
    .line 408
    :goto_8
    move-object v9, v5

    .line 409
    const/16 v5, 0x17

    .line 410
    .line 411
    goto/16 :goto_c

    .line 412
    .line 413
    :cond_14
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zztw;->zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 417
    move/from16 v19, v12

    .line 418
    .line 419
    if-nez v1, :cond_15

    .line 420
    .line 421
    const/4 v1, 0x1

    .line 422
    goto :goto_9

    .line 423
    :cond_15
    move/from16 v1, v17

    .line 424
    .line 425
    :goto_9
    :try_start_3
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zztw;->zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    .line 426
    .line 427
    .line 428
    move-result v12

    .line 429
    move-object/from16 v20, v0

    .line 430
    .line 431
    const/16 v0, 0x1d

    .line 432
    .line 433
    if-lt v14, v0, :cond_16

    .line 434
    .line 435
    invoke-static/range {v20 .. v20}, Landroidx/media3/exoplayer/mediacodec/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/MediaCodecInfo;)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    goto :goto_a

    .line 440
    :catch_2
    move-exception v0

    .line 441
    move-object/from16 v21, v7

    .line 442
    .line 443
    move v1, v9

    .line 444
    goto :goto_8

    .line 445
    :cond_16
    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfui;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    const-string v14, "omx.google."

    .line 454
    .line 455
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result v14

    .line 459
    if-nez v14, :cond_17

    .line 460
    .line 461
    const-string v14, "c2.android."

    .line 462
    .line 463
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    move-result v14

    .line 467
    if-nez v14, :cond_17

    .line 468
    .line 469
    const-string v14, "c2.google."

    .line 470
    .line 471
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 475
    if-nez v0, :cond_17

    .line 476
    .line 477
    const/4 v0, 0x1

    .line 478
    goto :goto_a

    .line 479
    :cond_17
    move/from16 v0, v17

    .line 480
    .line 481
    :goto_a
    if-eqz v16, :cond_18

    .line 482
    .line 483
    if-eq v15, v11, :cond_19

    .line 484
    .line 485
    const/4 v14, 0x1

    .line 486
    goto :goto_b

    .line 487
    :cond_18
    move v14, v11

    .line 488
    :goto_b
    if-nez v16, :cond_1a

    .line 489
    .line 490
    if-nez v15, :cond_1a

    .line 491
    .line 492
    :cond_19
    const/4 v14, 0x0

    .line 493
    const/4 v15, 0x0

    .line 494
    move v13, v0

    .line 495
    move v11, v1

    .line 496
    move v1, v9

    .line 497
    move-object v9, v5

    .line 498
    const/16 v5, 0x17

    .line 499
    .line 500
    :try_start_4
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zztc;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zztc;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    goto/16 :goto_d

    .line 508
    .line 509
    :catch_3
    move-exception v0

    .line 510
    move-object/from16 v21, v7

    .line 511
    .line 512
    goto :goto_c

    .line 513
    :cond_1a
    move v11, v1

    .line 514
    move v1, v9

    .line 515
    move-object v9, v5

    .line 516
    const/16 v5, 0x17

    .line 517
    .line 518
    if-nez v16, :cond_1c

    .line 519
    .line 520
    if-eqz v14, :cond_1c

    .line 521
    .line 522
    new-instance v14, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 537
    const/4 v14, 0x0

    .line 538
    const/4 v15, 0x1

    .line 539
    move-object/from16 v21, v7

    .line 540
    .line 541
    move-object v7, v13

    .line 542
    move v13, v0

    .line 543
    :try_start_5
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zztc;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zztc;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 548
    .line 549
    .line 550
    goto :goto_e

    .line 551
    :catch_4
    move-exception v0

    .line 552
    :goto_c
    :try_start_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 553
    .line 554
    const-string v10, "MediaCodecUtil"

    .line 555
    .line 556
    if-gt v7, v5, :cond_1b

    .line 557
    .line 558
    :try_start_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 559
    .line 560
    .line 561
    move-result v5

    .line 562
    if-nez v5, :cond_1b

    .line 563
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    .line 565
    .line 566
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .line 568
    .line 569
    const-string v5, "Skipping codec "

    .line 570
    .line 571
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    move-object/from16 v7, v21

    .line 575
    .line 576
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    const-string v5, " (failed to query capabilities)"

    .line 580
    .line 581
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    goto :goto_d

    .line 592
    :cond_1b
    move-object/from16 v7, v21

    .line 593
    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    const-string v2, "Failed to query codec "

    .line 600
    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v2, " ("

    .line 608
    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v2, ")"

    .line 616
    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 628
    :cond_1c
    :goto_d
    add-int/lit8 v9, v1, 0x1

    .line 629
    .line 630
    move-object/from16 v1, p0

    .line 631
    .line 632
    move/from16 v7, v19

    .line 633
    .line 634
    goto/16 :goto_0

    .line 635
    .line 636
    :cond_1d
    :goto_e
    return-object v6

    .line 637
    :goto_f
    new-instance v1, Lcom/google/android/gms/internal/ads/zztq;

    .line 638
    .line 639
    const/4 v2, 0x0

    .line 640
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zztq;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zztv;)V

    .line 641
    .line 642
    .line 643
    throw v1
.end method

.method private static zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zztu;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zztm;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zztm;-><init>(Lcom/google/android/gms/internal/ads/zztu;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static zzi(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/Wwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/MediaCodecInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzay;->zzh(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfui;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "arc."

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    const-string p1, "omx.google."

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_6

    .line 45
    .line 46
    const-string p1, "omx.ffmpeg."

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_6

    .line 53
    .line 54
    const-string p1, "omx.sec."

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    const-string p1, ".sw."

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    return v0

    .line 72
    :cond_4
    :goto_0
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_6

    .line 79
    .line 80
    const-string p1, "c2.android."

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    const-string p1, "c2.google."

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    const-string p1, "omx."

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    const-string p1, "c2."

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_5

    .line 111
    .line 112
    return v0

    .line 113
    :cond_5
    return v1

    .line 114
    :cond_6
    return v0
.end method
