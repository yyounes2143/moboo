.class public final Lcom/google/android/gms/internal/ads/zzdmo;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdpd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdny;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdsd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfjr;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzebt;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdrx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfcp;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdpd;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzebt;Lcom/google/android/gms/internal/ads/zzdny;Lcom/google/android/gms/internal/ads/zzdrx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzc:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zze:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzg:Lcom/google/android/gms/internal/ads/zzfjr;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzh:Lcom/google/android/gms/internal/ads/zzebt;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzd:Lcom/google/android/gms/internal/ads/zzdny;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzi:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzc:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p3, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdpd;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfbx;)Lcom/google/android/gms/internal/ads/zzcfb;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcae;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcae;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdmo;->zzh(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdmg;

    .line 24
    .line 25
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdmg;-><init>(Lcom/google/android/gms/internal/ads/zzcae;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzK(Lcom/google/android/gms/internal/ads/zzcgs;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzeb:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/zzcfb;->loadUrl(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdmo;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcfb;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcp;->zzb:Lcom/google/android/gms/internal/ads/zzbmg;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcae;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcae;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgv;->zzd()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaj(Lcom/google/android/gms/internal/ads/zzcgv;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgv;->zze()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaj(Lcom/google/android/gms/internal/ads/zzcgv;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdmf;

    .line 31
    .line 32
    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdmf;-><init>(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzcae;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzC(Lcom/google/android/gms/internal/ads/zzcgr;)V

    .line 36
    .line 37
    .line 38
    const-string p0, "google.afma.nativeAds.renderVideo"

    .line 39
    .line 40
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbnd;->zzp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 41
    .line 42
    .line 43
    return-object v1
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfbx;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdmo;->zzc:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdpd;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfbx;)Lcom/google/android/gms/internal/ads/zzcfb;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcae;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcae;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmo;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfcp;->zzb:Lcom/google/android/gms/internal/ads/zzbmg;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    move-object/from16 v3, p4

    .line 27
    .line 28
    move-object/from16 v5, p5

    .line 29
    .line 30
    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzdmo;->zzh(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgv;->zzd()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaj(Lcom/google/android/gms/internal/ads/zzcgv;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    move-object/from16 v3, p4

    .line 43
    .line 44
    move-object/from16 v5, p5

    .line 45
    .line 46
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdmo;->zzd:Lcom/google/android/gms/internal/ads/zzdny;

    .line 47
    .line 48
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdny;->zzb()Lcom/google/android/gms/internal/ads/zzdnv;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zznG:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    check-cast v9, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-nez v9, :cond_1

    .line 73
    .line 74
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmo;->zze:Landroid/content/Context;

    .line 75
    .line 76
    new-instance v9, Lcom/google/android/gms/ads/internal/zzb;

    .line 77
    .line 78
    invoke-direct {v9, v3, v4, v4}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbxv;Lcom/google/android/gms/internal/ads/zzbut;)V

    .line 79
    .line 80
    .line 81
    move-object v15, v9

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-object v15, v3

    .line 84
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const/4 v6, 0x1

    .line 99
    if-eq v6, v3, :cond_2

    .line 100
    .line 101
    move-object/from16 v17, v4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move-object/from16 v17, v5

    .line 105
    .line 106
    :goto_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdmo;->zzh:Lcom/google/android/gms/internal/ads/zzebt;

    .line 107
    .line 108
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdmo;->zzg:Lcom/google/android/gms/internal/ads/zzfjr;

    .line 109
    .line 110
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdmo;->zzf:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 111
    .line 112
    const/16 v25, 0x0

    .line 113
    .line 114
    const/16 v26, 0x0

    .line 115
    .line 116
    const/4 v13, 0x0

    .line 117
    const/4 v14, 0x0

    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    const/16 v21, 0x0

    .line 121
    .line 122
    const/16 v23, 0x0

    .line 123
    .line 124
    const/16 v24, 0x0

    .line 125
    .line 126
    move-object v9, v8

    .line 127
    move-object v10, v8

    .line 128
    move-object v11, v8

    .line 129
    move-object v12, v8

    .line 130
    move-object/from16 v22, v8

    .line 131
    .line 132
    move-object/from16 v18, v3

    .line 133
    .line 134
    move-object/from16 v19, v5

    .line 135
    .line 136
    move-object/from16 v20, v6

    .line 137
    .line 138
    invoke-interface/range {v7 .. v26}, Lcom/google/android/gms/internal/ads/zzcgt;->zzX(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbim;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbio;Lcom/google/android/gms/ads/internal/overlay/zzad;ZLcom/google/android/gms/internal/ads/zzbjz;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbsq;Lcom/google/android/gms/internal/ads/zzbxv;Lcom/google/android/gms/internal/ads/zzebt;Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzbkq;Lcom/google/android/gms/internal/ads/zzddy;Lcom/google/android/gms/internal/ads/zzbkp;Lcom/google/android/gms/internal/ads/zzbkj;Lcom/google/android/gms/internal/ads/zzbjx;Lcom/google/android/gms/internal/ads/zzcmn;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdmo;->zzj(Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdmd;

    .line 149
    .line 150
    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdmd;-><init>(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzcae;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzcgt;->zzC(Lcom/google/android/gms/internal/ads/zzcgr;)V

    .line 154
    .line 155
    .line 156
    move-object/from16 v0, p6

    .line 157
    .line 158
    move-object/from16 v3, p7

    .line 159
    .line 160
    invoke-interface {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfb;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-object v2
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzcae;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzq()Lcom/google/android/gms/internal/ads/zzcgd;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzq()Lcom/google/android/gms/internal/ads/zzcgd;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcgd;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcae;->zzb()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzegy;

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string p3, "Html video Web View failed to load. Error code: "

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p3, ", Description: "

    .line 42
    .line 43
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p3, ", Failing URL: "

    .line 50
    .line 51
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 p3, 0x1

    .line 62
    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzegy;-><init>(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzcaf;->zzd(Ljava/lang/Throwable;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzcae;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzej:Lcom/google/android/gms/internal/ads/zzbcm;

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
    if-eqz p3, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdmo;->zzi(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzcae;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzegy;

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p3, "Native Video WebView failed to load. Error code: "

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p3, ", Description: "

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p3, ", Failing URL: "

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 p3, 0x1

    .line 61
    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzegy;-><init>(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzcaf;->zzd(Ljava/lang/Throwable;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdmo;->zzi(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzcae;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;)V
    .locals 9
    .param p2    # Lcom/google/android/gms/ads/internal/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzbxv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmo;->zzj(Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "/video"

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzl:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 7
    .line 8
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "/videoMeta"

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzm:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdj;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "/precache"

    .line 24
    .line 25
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "/delayPageLoaded"

    .line 29
    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzp:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "/instrument"

    .line 36
    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzn:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 38
    .line 39
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "/log"

    .line 43
    .line 44
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 45
    .line 46
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbiu;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbiu;-><init>(Lcom/google/android/gms/internal/ads/zzddy;Lcom/google/android/gms/internal/ads/zzcmn;)V

    .line 53
    .line 54
    .line 55
    const-string v2, "/click"

    .line 56
    .line 57
    invoke-interface {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcp;->zzb:Lcom/google/android/gms/internal/ads/zzbmg;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v2, 0x1

    .line 71
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzH(Z)V

    .line 72
    .line 73
    .line 74
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbki;

    .line 75
    .line 76
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zznG:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eq v2, v0, :cond_0

    .line 93
    .line 94
    move-object v4, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move-object v4, p2

    .line 97
    :goto_0
    const/4 v7, 0x0

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v5, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbki;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbsj;Lcom/google/android/gms/internal/ads/zzebt;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzcmn;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "/open"

    .line 105
    .line 106
    invoke-interface {p1, v0, v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/4 v1, 0x0

    .line 115
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzH(Z)V

    .line 116
    .line 117
    .line 118
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lcom/google/android/gms/internal/ads/zzbyj;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbyj;->zzp(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    new-instance v0, Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzD()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_2

    .line 142
    .line 143
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzD()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbu;->zzaw:Ljava/util/Map;

    .line 148
    .line 149
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkc;

    .line 150
    .line 151
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbkc;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 156
    .line 157
    .line 158
    const-string v0, "/logScionEvent"

    .line 159
    .line 160
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zznG:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 164
    .line 165
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_4

    .line 180
    .line 181
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzD(Lcom/google/android/gms/ads/internal/zzb;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzcgt;->zzL(Lcom/google/android/gms/internal/ads/zzbxv;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzcae;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzq()Lcom/google/android/gms/internal/ads/zzcgd;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzq()Lcom/google/android/gms/internal/ads/zzcgd;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcgd;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcae;->zzb()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final zzj(Lcom/google/android/gms/internal/ads/zzcfb;)V
    .locals 2

    .line 1
    const-string v0, "/videoClicked"

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzh:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzJ(Z)V

    .line 14
    .line 15
    .line 16
    const-string v0, "/getNativeAdViewSignals"

    .line 17
    .line 18
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzs:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 19
    .line 20
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "/getNativeClickMeta"

    .line 24
    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzt:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 26
    .line 27
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p2    # Lcom/google/android/gms/ads/internal/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzbxv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzcx:Lcom/google/android/gms/internal/ads/zzbcm;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzi:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrl;->zzae:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdmi;

    .line 48
    .line 49
    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdmi;-><init>(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzb:Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgcy;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgcf;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmh;

    .line 59
    .line 60
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdmh;-><init>(Lcom/google/android/gms/internal/ads/zzdmo;Lorg/json/JSONObject;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzgcy;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgcf;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfbx;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzcx:Lcom/google/android/gms/internal/ads/zzbcm;

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
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzi:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrl;->zzag:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdme;

    .line 48
    .line 49
    move-object v2, p0

    .line 50
    move-object v8, p1

    .line 51
    move-object v9, p2

    .line 52
    move-object v4, p3

    .line 53
    move-object v5, p4

    .line 54
    move-object v3, p5

    .line 55
    move-object/from16 v6, p6

    .line 56
    .line 57
    move-object/from16 v7, p7

    .line 58
    .line 59
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzdme;-><init>(Lcom/google/android/gms/internal/ads/zzdmo;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfbx;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbxv;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmo;->zzb:Ljava/util/concurrent/Executor;

    .line 63
    .line 64
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgcf;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method
