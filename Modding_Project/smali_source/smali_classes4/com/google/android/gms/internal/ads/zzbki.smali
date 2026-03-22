.class public final Lcom/google/android/gms/internal/ads/zzbki;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjw;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/zzb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdsd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbsj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzebt;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcmn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzgdj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbsj;Lcom/google/android/gms/internal/ads/zzebt;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzcmn;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzg:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzh:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbki;->zza:Lcom/google/android/gms/ads/internal/zzb;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzd:Lcom/google/android/gms/internal/ads/zzbsj;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzb:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzu;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 25
    .line 26
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzf:Lcom/google/android/gms/internal/ads/zzcmn;

    .line 27
    .line 28
    return-void
.end method

.method public static zzb(Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "o"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    const-string v0, "p"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x7

    .line 20
    return p0

    .line 21
    :cond_0
    const-string v0, "l"

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 p0, 0x6

    .line 30
    return p0

    .line 31
    :cond_1
    const-string v0, "c"

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const/16 p0, 0xe

    .line 40
    .line 41
    return p0

    .line 42
    :cond_2
    const/4 p0, -0x1

    .line 43
    return p0
.end method

.method public static zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/net/Uri;
    .locals 2
    .param p4    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzfct;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzmm:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-eqz p5, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzavl;->zze(Landroid/net/Uri;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p5, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfct;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzavl;->zze(Landroid/net/Uri;)Z

    .line 38
    .line 39
    .line 40
    move-result p5

    .line 41
    if-eqz p5, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzavl;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzavm; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-object p0

    .line 48
    :goto_0
    const-string p1, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzbzn;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :catch_1
    :cond_2
    :goto_1
    return-object p2
.end method

.method public static zzd(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "aclk_ms"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "aclk_upms"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 42
    .line 43
    const-string v2, "Error adding click uptime parameter to url: "

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzbki;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbki;->zzh(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static zzf(Ljava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    const-string v1, "custom_close"

    .line 4
    .line 5
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzbki;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbki;->zzm(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzh(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v9, p2

    .line 8
    .line 9
    check-cast v9, Lcom/google/android/gms/internal/ads/zzcfb;

    .line 10
    .line 11
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzD()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzR()Lcom/google/android/gms/internal/ads/zzfbx;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v10, 0x0

    .line 20
    const-string v4, ""

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfbx;->zzb:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbu;->zzb()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    move-object v5, v4

    .line 33
    move v4, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v5, v4

    .line 36
    move v4, v10

    .line 37
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzkY:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v11, 0x1

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const-string v0, "sc"

    .line 57
    .line 58
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/String;

    .line 69
    .line 70
    const-string v2, "0"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    move v6, v10

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move v6, v11

    .line 81
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzmX:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 82
    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const-string v2, "true"

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    const-string v0, "ig_cl"

    .line 102
    .line 103
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_2

    .line 108
    .line 109
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    move v7, v11

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    move v7, v10

    .line 124
    :goto_2
    const-string v0, "expand"

    .line 125
    .line 126
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaF()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 139
    .line 140
    const-string v0, "Cannot expand WebView that is already expanded."

    .line 141
    .line 142
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzbki;->zzk(Z)V

    .line 147
    .line 148
    .line 149
    move-object/from16 v0, p2

    .line 150
    .line 151
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 152
    .line 153
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbki;->zzf(Ljava/util/Map;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbki;->zzb(Ljava/util/Map;)I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-interface {v0, v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaL(ZIZ)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_4
    const-string v0, "webapp"

    .line 166
    .line 167
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzbki;->zzk(Z)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzmi:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 177
    .line 178
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljava/lang/Boolean;

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    const-string v0, "is_allowed_for_lock_screen"

    .line 195
    .line 196
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    const-string v2, "1"

    .line 201
    .line 202
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    move/from16 v17, v11

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_5
    move/from16 v17, v10

    .line 212
    .line 213
    :goto_3
    if-eqz p1, :cond_6

    .line 214
    .line 215
    move-object/from16 v12, p2

    .line 216
    .line 217
    check-cast v12, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 218
    .line 219
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbki;->zzf(Ljava/util/Map;)Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbki;->zzb(Ljava/util/Map;)I

    .line 224
    .line 225
    .line 226
    move-result v14

    .line 227
    move-object/from16 v15, p1

    .line 228
    .line 229
    move/from16 v16, v6

    .line 230
    .line 231
    invoke-interface/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaN(ZILjava/lang/String;ZZ)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_6
    move-object/from16 v12, p2

    .line 236
    .line 237
    check-cast v12, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 238
    .line 239
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbki;->zzf(Ljava/util/Map;)Z

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbki;->zzb(Ljava/util/Map;)I

    .line 244
    .line 245
    .line 246
    move-result v14

    .line 247
    const-string v0, "html"

    .line 248
    .line 249
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    move-object v15, v0

    .line 254
    check-cast v15, Ljava/lang/String;

    .line 255
    .line 256
    const-string v0, "baseurl"

    .line 257
    .line 258
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move-object/from16 v16, v0

    .line 263
    .line 264
    check-cast v16, Ljava/lang/String;

    .line 265
    .line 266
    move/from16 v17, v6

    .line 267
    .line 268
    invoke-interface/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaM(ZILjava/lang/String;Ljava/lang/String;Z)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :cond_7
    const-string v0, "chrome_custom_tab"

    .line 273
    .line 274
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    const/4 v12, 0x0

    .line 279
    if-eqz v0, :cond_e

    .line 280
    .line 281
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbcv;->zzeV:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 286
    .line 287
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    check-cast v8, Ljava/lang/Boolean;

    .line 296
    .line 297
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    if-eqz v8, :cond_8

    .line 302
    .line 303
    const-string v0, "User opt out chrome custom tab."

    .line 304
    .line 305
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const/16 v0, 0xa

    .line 309
    .line 310
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbki;->zzm(I)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_8
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbcv;->zzeQ:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 315
    .line 316
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    check-cast v8, Ljava/lang/Boolean;

    .line 325
    .line 326
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    if-eqz v8, :cond_9

    .line 331
    .line 332
    invoke-static {v0, v12}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_a

    .line 337
    .line 338
    move v10, v11

    .line 339
    goto :goto_4

    .line 340
    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdw;->zzg(Landroid/content/Context;)Z

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    :cond_a
    :goto_4
    if-nez v10, :cond_b

    .line 345
    .line 346
    const/4 v0, 0x4

    .line 347
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbki;->zzm(I)V

    .line 348
    .line 349
    .line 350
    :goto_5
    const-string v0, "use_first_package"

    .line 351
    .line 352
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    const-string v0, "use_running_process"

    .line 356
    .line 357
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-object/from16 v2, p2

    .line 361
    .line 362
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbki;->zzj(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :cond_b
    move-object/from16 v3, p2

    .line 367
    .line 368
    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzbki;->zzk(Z)V

    .line 369
    .line 370
    .line 371
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_c

    .line 376
    .line 377
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 378
    .line 379
    const-string v0, "Cannot open browser with null or empty url"

    .line 380
    .line 381
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    const/4 v0, 0x7

    .line 385
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbki;->zzm(I)V

    .line 386
    .line 387
    .line 388
    return-void

    .line 389
    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 390
    .line 391
    .line 392
    move-result-object v12

    .line 393
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 394
    .line 395
    .line 396
    move-result-object v10

    .line 397
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzI()Lcom/google/android/gms/internal/ads/zzavl;

    .line 398
    .line 399
    .line 400
    move-result-object v11

    .line 401
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzF()Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi()Landroid/app/Activity;

    .line 406
    .line 407
    .line 408
    move-result-object v14

    .line 409
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzS()Lcom/google/android/gms/internal/ads/zzfct;

    .line 410
    .line 411
    .line 412
    move-result-object v15

    .line 413
    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzbki;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/net/Uri;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbki;->zzd(Landroid/net/Uri;)Landroid/net/Uri;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    if-eqz v4, :cond_d

    .line 422
    .line 423
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 424
    .line 425
    if-eqz v2, :cond_d

    .line 426
    .line 427
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbki;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    if-eqz v2, :cond_d

    .line 440
    .line 441
    goto/16 :goto_c

    .line 442
    .line 443
    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbkf;

    .line 444
    .line 445
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzbkf;-><init>(Lcom/google/android/gms/internal/ads/zzbki;)V

    .line 446
    .line 447
    .line 448
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzbki;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 449
    .line 450
    move-object v2, v3

    .line 451
    check-cast v2, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 452
    .line 453
    new-instance v8, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 454
    .line 455
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v10

    .line 459
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbki;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 460
    .line 461
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 466
    .line 467
    .line 468
    move-result-object v17

    .line 469
    const/16 v18, 0x1

    .line 470
    .line 471
    const/4 v9, 0x0

    .line 472
    const/4 v11, 0x0

    .line 473
    const/4 v12, 0x0

    .line 474
    const/4 v13, 0x0

    .line 475
    const/4 v14, 0x0

    .line 476
    const/4 v15, 0x0

    .line 477
    const/16 v16, 0x0

    .line 478
    .line 479
    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    .line 480
    .line 481
    .line 482
    invoke-interface {v2, v8, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    .line 483
    .line 484
    .line 485
    return-void

    .line 486
    :cond_e
    const-string v0, "app"

    .line 487
    .line 488
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_f

    .line 493
    .line 494
    const-string v0, "system_browser"

    .line 495
    .line 496
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Ljava/lang/String;

    .line 501
    .line 502
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-nez v0, :cond_10

    .line 507
    .line 508
    :cond_f
    move v2, v6

    .line 509
    move v6, v4

    .line 510
    move v4, v2

    .line 511
    move-object/from16 v2, p2

    .line 512
    .line 513
    move v13, v7

    .line 514
    move-object v7, v5

    .line 515
    goto :goto_6

    .line 516
    :cond_10
    move-object/from16 v2, p2

    .line 517
    .line 518
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbki;->zzj(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :goto_6
    const-string v0, "open_app"

    .line 523
    .line 524
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    const-string v14, "p"

    .line 529
    .line 530
    if-eqz v0, :cond_14

    .line 531
    .line 532
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zziy:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 533
    .line 534
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    check-cast v0, Ljava/lang/Boolean;

    .line 543
    .line 544
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-eqz v0, :cond_1d

    .line 549
    .line 550
    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzbki;->zzk(Z)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    check-cast v0, Ljava/lang/String;

    .line 558
    .line 559
    if-nez v0, :cond_11

    .line 560
    .line 561
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 562
    .line 563
    const-string v0, "Package name missing from open app action."

    .line 564
    .line 565
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    return-void

    .line 569
    :cond_11
    if-eqz v6, :cond_12

    .line 570
    .line 571
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 572
    .line 573
    if-eqz v3, :cond_12

    .line 574
    .line 575
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    invoke-direct {v1, v2, v3, v0, v7}, Lcom/google/android/gms/internal/ads/zzbki;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    if-nez v3, :cond_1d

    .line 584
    .line 585
    :cond_12
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    if-nez v3, :cond_13

    .line 594
    .line 595
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 596
    .line 597
    const-string v0, "Cannot get package manager from open app action."

    .line 598
    .line 599
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    return-void

    .line 603
    :cond_13
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    if-eqz v0, :cond_1d

    .line 608
    .line 609
    check-cast v2, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 610
    .line 611
    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 612
    .line 613
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbki;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 614
    .line 615
    invoke-direct {v3, v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    .line 616
    .line 617
    .line 618
    invoke-interface {v2, v3, v4, v13, v7}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :cond_14
    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzbki;->zzk(Z)V

    .line 623
    .line 624
    .line 625
    const-string v0, "intent_url"

    .line 626
    .line 627
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    move-object v5, v0

    .line 632
    check-cast v5, Ljava/lang/String;

    .line 633
    .line 634
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-nez v0, :cond_15

    .line 639
    .line 640
    :try_start_0
    invoke-static {v5, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    .line 642
    .line 643
    move-result-object v12
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    goto :goto_7

    .line 645
    :catch_0
    move-exception v0

    .line 646
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v5

    .line 650
    sget v15, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 651
    .line 652
    const-string v15, "Error parsing the url: "

    .line 653
    .line 654
    invoke-virtual {v15, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    invoke-static {v5, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 659
    .line 660
    .line 661
    :cond_15
    :goto_7
    if-eqz v12, :cond_17

    .line 662
    .line 663
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    if-eqz v0, :cond_17

    .line 668
    .line 669
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 674
    .line 675
    invoke-virtual {v5, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    if-nez v5, :cond_17

    .line 680
    .line 681
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 682
    .line 683
    .line 684
    move-result-object v15

    .line 685
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzI()Lcom/google/android/gms/internal/ads/zzavl;

    .line 686
    .line 687
    .line 688
    move-result-object v16

    .line 689
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzF()Landroid/view/View;

    .line 690
    .line 691
    .line 692
    move-result-object v18

    .line 693
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi()Landroid/app/Activity;

    .line 694
    .line 695
    .line 696
    move-result-object v19

    .line 697
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzS()Lcom/google/android/gms/internal/ads/zzfct;

    .line 698
    .line 699
    .line 700
    move-result-object v20

    .line 701
    move-object/from16 v17, v0

    .line 702
    .line 703
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzbki;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/net/Uri;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbki;->zzd(Landroid/net/Uri;)Landroid/net/Uri;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v5

    .line 715
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    if-nez v5, :cond_16

    .line 720
    .line 721
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcv;->zziz:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 722
    .line 723
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 724
    .line 725
    .line 726
    move-result-object v15

    .line 727
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v5

    .line 731
    check-cast v5, Ljava/lang/Boolean;

    .line 732
    .line 733
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 734
    .line 735
    .line 736
    move-result v5

    .line 737
    if-eqz v5, :cond_16

    .line 738
    .line 739
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v5

    .line 743
    invoke-virtual {v12, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    .line 745
    .line 746
    goto :goto_8

    .line 747
    :cond_16
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 748
    .line 749
    .line 750
    :cond_17
    :goto_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zziU:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 751
    .line 752
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 753
    .line 754
    .line 755
    move-result-object v5

    .line 756
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    check-cast v0, Ljava/lang/Boolean;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    const-string v15, "event_id"

    .line 767
    .line 768
    if-eqz v0, :cond_18

    .line 769
    .line 770
    const-string v0, "intent_async"

    .line 771
    .line 772
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 773
    .line 774
    .line 775
    move-result v0

    .line 776
    if-eqz v0, :cond_18

    .line 777
    .line 778
    invoke-interface {v3, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    if-eqz v0, :cond_18

    .line 783
    .line 784
    move/from16 v16, v4

    .line 785
    .line 786
    goto :goto_9

    .line 787
    :cond_18
    move/from16 v16, v4

    .line 788
    .line 789
    move v11, v10

    .line 790
    :goto_9
    new-instance v4, Ljava/util/HashMap;

    .line 791
    .line 792
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 793
    .line 794
    .line 795
    if-eqz v11, :cond_19

    .line 796
    .line 797
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkg;

    .line 798
    .line 799
    move-object v5, v3

    .line 800
    move-object v3, v2

    .line 801
    move/from16 v2, v16

    .line 802
    .line 803
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbkg;-><init>(Lcom/google/android/gms/internal/ads/zzbki;ZLcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/util/Map;)V

    .line 804
    .line 805
    .line 806
    move-object v2, v3

    .line 807
    move-object v3, v5

    .line 808
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbki;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 809
    .line 810
    goto :goto_a

    .line 811
    :cond_19
    move/from16 v10, v16

    .line 812
    .line 813
    :goto_a
    const-string v0, "openIntentAsync"

    .line 814
    .line 815
    if-eqz v12, :cond_1b

    .line 816
    .line 817
    if-eqz v6, :cond_1a

    .line 818
    .line 819
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 820
    .line 821
    if-eqz v5, :cond_1a

    .line 822
    .line 823
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 824
    .line 825
    .line 826
    move-result-object v5

    .line 827
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 828
    .line 829
    .line 830
    move-result-object v6

    .line 831
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v6

    .line 835
    invoke-direct {v1, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbki;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 836
    .line 837
    .line 838
    move-result v5

    .line 839
    if-eqz v5, :cond_1a

    .line 840
    .line 841
    if-eqz v11, :cond_1d

    .line 842
    .line 843
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    check-cast v3, Ljava/lang/String;

    .line 848
    .line 849
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 850
    .line 851
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbmr;

    .line 855
    .line 856
    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzbmr;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 857
    .line 858
    .line 859
    return-void

    .line 860
    :cond_1a
    move-object v0, v2

    .line 861
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 862
    .line 863
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 864
    .line 865
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbki;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 866
    .line 867
    invoke-direct {v2, v12, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    .line 868
    .line 869
    .line 870
    invoke-interface {v0, v2, v10, v13, v7}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    .line 871
    .line 872
    .line 873
    return-void

    .line 874
    :cond_1b
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 875
    .line 876
    .line 877
    move-result v5

    .line 878
    if-nez v5, :cond_1c

    .line 879
    .line 880
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 881
    .line 882
    .line 883
    move-result-object v18

    .line 884
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 885
    .line 886
    .line 887
    move-result-object v16

    .line 888
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzI()Lcom/google/android/gms/internal/ads/zzavl;

    .line 889
    .line 890
    .line 891
    move-result-object v17

    .line 892
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzF()Landroid/view/View;

    .line 893
    .line 894
    .line 895
    move-result-object v19

    .line 896
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi()Landroid/app/Activity;

    .line 897
    .line 898
    .line 899
    move-result-object v20

    .line 900
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->zzS()Lcom/google/android/gms/internal/ads/zzfct;

    .line 901
    .line 902
    .line 903
    move-result-object v21

    .line 904
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzbki;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/net/Uri;

    .line 905
    .line 906
    .line 907
    move-result-object v5

    .line 908
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbki;->zzd(Landroid/net/Uri;)Landroid/net/Uri;

    .line 909
    .line 910
    .line 911
    move-result-object v5

    .line 912
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v5

    .line 916
    goto :goto_b

    .line 917
    :cond_1c
    move-object/from16 v5, p1

    .line 918
    .line 919
    :goto_b
    if-eqz v6, :cond_1e

    .line 920
    .line 921
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 922
    .line 923
    if-eqz v6, :cond_1e

    .line 924
    .line 925
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 926
    .line 927
    .line 928
    move-result-object v6

    .line 929
    invoke-direct {v1, v2, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzbki;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 930
    .line 931
    .line 932
    move-result v6

    .line 933
    if-eqz v6, :cond_1e

    .line 934
    .line 935
    if-eqz v11, :cond_1d

    .line 936
    .line 937
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    check-cast v3, Ljava/lang/String;

    .line 942
    .line 943
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 944
    .line 945
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbmr;

    .line 949
    .line 950
    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzbmr;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 951
    .line 952
    .line 953
    :cond_1d
    :goto_c
    return-void

    .line 954
    :cond_1e
    move-object v0, v2

    .line 955
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 956
    .line 957
    new-instance v16, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 958
    .line 959
    const-string v2, "i"

    .line 960
    .line 961
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    move-object/from16 v17, v2

    .line 966
    .line 967
    check-cast v17, Ljava/lang/String;

    .line 968
    .line 969
    const-string v2, "m"

    .line 970
    .line 971
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    move-object/from16 v19, v2

    .line 976
    .line 977
    check-cast v19, Ljava/lang/String;

    .line 978
    .line 979
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v2

    .line 983
    move-object/from16 v20, v2

    .line 984
    .line 985
    check-cast v20, Ljava/lang/String;

    .line 986
    .line 987
    const-string v2, "c"

    .line 988
    .line 989
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object v2

    .line 993
    move-object/from16 v21, v2

    .line 994
    .line 995
    check-cast v21, Ljava/lang/String;

    .line 996
    .line 997
    const-string v2, "f"

    .line 998
    .line 999
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v2

    .line 1003
    move-object/from16 v22, v2

    .line 1004
    .line 1005
    check-cast v22, Ljava/lang/String;

    .line 1006
    .line 1007
    const-string v2, "e"

    .line 1008
    .line 1009
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    move-object/from16 v23, v2

    .line 1014
    .line 1015
    check-cast v23, Ljava/lang/String;

    .line 1016
    .line 1017
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbki;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 1018
    .line 1019
    move-object/from16 v24, v2

    .line 1020
    .line 1021
    move-object/from16 v18, v5

    .line 1022
    .line 1023
    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    .line 1024
    .line 1025
    .line 1026
    move-object/from16 v2, v16

    .line 1027
    .line 1028
    invoke-interface {v0, v2, v10, v13, v7}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    return-void
.end method

.method private final zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 2
    .line 3
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzebt;->zzc(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzb:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v0, "dialog_not_shown_reason"

    .line 11
    .line 12
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/zzfyf;->zze(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyf;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    const-string v4, "dialog_not_shown"

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    move-object v3, p2

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzece;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzebt;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private final zzj(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V
    .locals 21

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
    move-object/from16 v3, p4

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzbki;->zzk(Z)V

    .line 11
    .line 12
    .line 13
    move-object v5, v0

    .line 14
    check-cast v5, Lcom/google/android/gms/internal/ads/zzcfb;

    .line 15
    .line 16
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v8

    .line 20
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfb;->zzI()Lcom/google/android/gms/internal/ads/zzavl;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfb;->zzF()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcfb;->zzS()Lcom/google/android/gms/internal/ads/zzfct;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    const-string v6, "activity"

    .line 33
    .line 34
    invoke-virtual {v8, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    move-object v12, v6

    .line 39
    check-cast v12, Landroid/app/ActivityManager;

    .line 40
    .line 41
    const-string v6, "u"

    .line 42
    .line 43
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_0

    .line 54
    .line 55
    move-object/from16 v18, v5

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    move-object v7, v9

    .line 65
    move-object v9, v10

    .line 66
    const/4 v10, 0x0

    .line 67
    move-object/from16 v20, v8

    .line 68
    .line 69
    move-object v8, v6

    .line 70
    move-object/from16 v6, v20

    .line 71
    .line 72
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbki;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    move-object v10, v9

    .line 77
    move-object v9, v7

    .line 78
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbki;->zzd(Landroid/net/Uri;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const-string v8, "use_first_package"

    .line 83
    .line 84
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    check-cast v8, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const-string v8, "use_running_process"

    .line 95
    .line 96
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v15

    .line 106
    const-string v8, "use_custom_tabs"

    .line 107
    .line 108
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_2

    .line 119
    .line 120
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zzeM:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 121
    .line 122
    move/from16 v16, v4

    .line 123
    .line 124
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_1

    .line 139
    .line 140
    :goto_0
    move/from16 v2, v16

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    const/4 v2, 0x0

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    move/from16 v16, v4

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :goto_1
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    const-string v8, "http"

    .line 153
    .line 154
    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    const-string v13, "https"

    .line 159
    .line 160
    if-eqz v4, :cond_3

    .line 161
    .line 162
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    goto :goto_2

    .line 175
    :cond_3
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v13, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_4

    .line 184
    .line 185
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    goto :goto_2

    .line 198
    :cond_4
    const/4 v13, 0x0

    .line 199
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-static {v7, v6, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-static {v13, v6, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    if-eqz v2, :cond_5

    .line 213
    .line 214
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 215
    .line 216
    .line 217
    invoke-static {v6, v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 221
    .line 222
    .line 223
    invoke-static {v6, v13}, Lcom/google/android/gms/ads/internal/util/zzs;->zzp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 224
    .line 225
    .line 226
    :cond_5
    move-object v8, v6

    .line 227
    move-object v6, v7

    .line 228
    const/4 v2, 0x0

    .line 229
    move-object v7, v4

    .line 230
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zzd(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/pm/ResolveInfo;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    if-eqz v4, :cond_7

    .line 235
    .line 236
    move-object v7, v4

    .line 237
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    move-result-object v13

    .line 241
    :cond_6
    move-object/from16 v18, v5

    .line 242
    .line 243
    goto/16 :goto_6

    .line 244
    .line 245
    :cond_7
    move-object v4, v7

    .line 246
    if-eqz v13, :cond_8

    .line 247
    .line 248
    invoke-static {v13, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zzc(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/pm/ResolveInfo;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    if-eqz v7, :cond_8

    .line 253
    .line 254
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    move-result-object v13

    .line 258
    invoke-static {v13, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zzc(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/pm/ResolveInfo;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    if-nez v7, :cond_6

    .line 263
    .line 264
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-eqz v7, :cond_9

    .line 269
    .line 270
    move-object/from16 v18, v5

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_9
    if-eqz v15, :cond_c

    .line 274
    .line 275
    if-eqz v12, :cond_c

    .line 276
    .line 277
    invoke-virtual {v12}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    if-eqz v12, :cond_c

    .line 282
    .line 283
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 284
    .line 285
    .line 286
    move-result v13

    .line 287
    move v15, v2

    .line 288
    :goto_3
    if-ge v15, v13, :cond_c

    .line 289
    .line 290
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 295
    .line 296
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v17

    .line 300
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v18

    .line 304
    add-int/lit8 v19, v15, 0x1

    .line 305
    .line 306
    if-eqz v18, :cond_b

    .line 307
    .line 308
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v18

    .line 312
    move-object/from16 v2, v18

    .line 313
    .line 314
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 315
    .line 316
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 317
    .line 318
    move-object/from16 v18, v5

    .line 319
    .line 320
    iget-object v5, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 321
    .line 322
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_a

    .line 329
    .line 330
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/Intent;

    .line 331
    .line 332
    .line 333
    move-result-object v13

    .line 334
    goto :goto_6

    .line 335
    :cond_a
    move-object/from16 v5, v18

    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    goto :goto_4

    .line 339
    :cond_b
    move/from16 v15, v19

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_c
    move-object/from16 v18, v5

    .line 343
    .line 344
    if-eqz v14, :cond_d

    .line 345
    .line 346
    const/4 v2, 0x0

    .line 347
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    move-object v7, v2

    .line 352
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 353
    .line 354
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbkh;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavl;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfct;)Landroid/content/Intent;

    .line 355
    .line 356
    .line 357
    move-result-object v13

    .line 358
    goto :goto_6

    .line 359
    :cond_d
    :goto_5
    move-object v13, v6

    .line 360
    :goto_6
    if-eqz p3, :cond_f

    .line 361
    .line 362
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 363
    .line 364
    if-eqz v2, :cond_f

    .line 365
    .line 366
    if-eqz v13, :cond_f

    .line 367
    .line 368
    invoke-interface/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzbki;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-nez v2, :cond_e

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_e
    return-void

    .line 388
    :cond_f
    :goto_7
    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 389
    .line 390
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 391
    .line 392
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbki;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 393
    .line 394
    invoke-direct {v2, v13, v4}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    .line 395
    .line 396
    .line 397
    move/from16 v4, p5

    .line 398
    .line 399
    move/from16 v5, p6

    .line 400
    .line 401
    invoke-interface {v0, v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 411
    .line 412
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    return-void
.end method

.method private final zzk(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzd:Lcom/google/android/gms/internal/ads/zzbsj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbsj;->zzb(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzb:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 6
    .line 7
    const-string v2, "offline_open"

    .line 8
    .line 9
    invoke-static {p2, v0, v1, p4, v2}, Lcom/google/android/gms/internal/ads/zzece;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzebt;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbzn;->zzA(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 26
    .line 27
    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzebt;->zzh(Lcom/google/android/gms/ads/internal/util/client/zzu;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    move-object v0, p1

    .line 32
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfb;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzD()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x1

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzay:Lcom/google/android/gms/ads/internal/util/client/zzw;

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zzc()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_2

    .line 50
    .line 51
    move v4, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v4, v1

    .line 54
    :goto_0
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzad:Lcom/google/android/gms/internal/ads/zzbtr;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzbtr;->zza:Z

    .line 61
    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzbtr;->zzb:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbtr;->zzc:Z

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    move v2, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v2, v1

    .line 75
    :goto_1
    if-nez v4, :cond_f

    .line 76
    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zziO:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    goto/16 :goto_7

    .line 98
    .line 99
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 100
    .line 101
    .line 102
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzA(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbr;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 107
    .line 108
    .line 109
    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const-string v5, "offline_notification_channel"

    .line 118
    .line 119
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzs()Lcom/google/android/gms/ads/internal/util/zzaa;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v6, p2, v5}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzi(Landroid/content/Context;Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcgv;->zzi()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_5

    .line 136
    .line 137
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi()Landroid/app/Activity;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    if-nez v6, :cond_5

    .line 142
    .line 143
    move v6, v3

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    move v6, v1

    .line 146
    :goto_2
    if-nez v4, :cond_9

    .line 147
    .line 148
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 149
    .line 150
    .line 151
    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_6

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 163
    .line 164
    const/16 v7, 0x21

    .line 165
    .line 166
    if-ge v4, v7, :cond_7

    .line 167
    .line 168
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zziJ:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 169
    .line 170
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    goto :goto_3

    .line 185
    :cond_7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zziI:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 186
    .line 187
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Ljava/lang/Boolean;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    :goto_3
    if-eqz v4, :cond_8

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_8
    :goto_4
    const-string p1, "notifications_disabled"

    .line 205
    .line 206
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbki;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    return v1

    .line 210
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    .line 211
    .line 212
    const-string p1, "notification_channel_disabled"

    .line 213
    .line 214
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbki;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    return v1

    .line 218
    :cond_a
    if-nez v2, :cond_b

    .line 219
    .line 220
    const-string p1, "work_manager_unavailable"

    .line 221
    .line 222
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbki;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    return v1

    .line 226
    :cond_b
    if-eqz v6, :cond_c

    .line 227
    .line 228
    const-string p1, "ad_no_activity"

    .line 229
    .line 230
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbki;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return v1

    .line 234
    :cond_c
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zziG:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 235
    .line 236
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    check-cast v2, Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-nez v2, :cond_d

    .line 251
    .line 252
    const-string p1, "notification_flow_disabled"

    .line 253
    .line 254
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbki;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return v1

    .line 258
    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    if-eqz v2, :cond_e

    .line 263
    .line 264
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi()Landroid/app/Activity;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    if-eqz v2, :cond_e

    .line 269
    .line 270
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzecg;->zze()Lcom/google/android/gms/internal/ads/zzecf;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi()Landroid/app/Activity;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzecf;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzecf;

    .line 279
    .line 280
    .line 281
    const/4 v4, 0x0

    .line 282
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzecf;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)Lcom/google/android/gms/internal/ads/zzecf;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/ads/zzecf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzecf;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzecf;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzecf;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzecf;->zze()Lcom/google/android/gms/internal/ads/zzecg;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf(Lcom/google/android/gms/internal/ads/zzecg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :catch_0
    move-exception p1

    .line 304
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbki;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    return v1

    .line 312
    :cond_e
    move-object p2, p1

    .line 313
    check-cast p2, Lcom/google/android/gms/internal/ads/zzcgl;

    .line 314
    .line 315
    const/16 v0, 0xe

    .line 316
    .line 317
    invoke-interface {p2, p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzcgl;->zzaK(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    :goto_6
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    .line 321
    .line 322
    .line 323
    return v3

    .line 324
    :cond_f
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzb:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 325
    .line 326
    if-eqz p1, :cond_10

    .line 327
    .line 328
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzebt;

    .line 329
    .line 330
    const-string v0, "onfs"

    .line 331
    .line 332
    invoke-static {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzece;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzebt;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_10
    return v1
.end method

.method private final zzm(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzeP:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzb:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Lcom/google/android/gms/internal/ads/zzdsc;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "action"

    .line 29
    .line 30
    const-string v2, "cct_action"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 33
    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    const-string p1, "OPT_OUT"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_0
    const-string p1, "WRONG_EXP_SETUP"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_1
    const-string p1, "UNKNOWN"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    const-string p1, "EMPTY_URL"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_3
    const-string p1, "ACTIVITY_NOT_FOUND"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_4
    const-string p1, "CCT_READY_TO_OPEN"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_5
    const-string p1, "CCT_NOT_SUPPORTED"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_6
    const-string p1, "CONTEXT_NULL"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_7
    const-string p1, "CONTEXT_NOT_AN_ACTIVITY"

    .line 63
    .line 64
    :goto_0
    const-string v1, "cct_open_status"

    .line 65
    .line 66
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsc;->zzj()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_1
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    .line 2
    .line 3
    const-string v0, "u"

    .line 4
    .line 5
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfb;

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzD()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzD()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzaw:Ljava/util/Map;

    .line 30
    .line 31
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbyl;->zzc(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "a"

    .line 41
    .line 42
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 51
    .line 52
    const-string p1, "Action missing from an open GMSG."

    .line 53
    .line 54
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbki;->zza:Lcom/google/android/gms/ads/internal/zzb;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzb;->zzc()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zzkp:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 74
    .line 75
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzf:Lcom/google/android/gms/internal/ads/zzcmn;

    .line 92
    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmn;->zzj(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcmn;->zze(Ljava/lang/String;Ljava/util/Random;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbke;

    .line 115
    .line 116
    invoke-direct {v2, p0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzbke;-><init>(Lcom/google/android/gms/internal/ads/zzbki;Ljava/util/Map;Lcom/google/android/gms/ads/internal/client/zza;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbki;->zzh:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 120
    .line 121
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
