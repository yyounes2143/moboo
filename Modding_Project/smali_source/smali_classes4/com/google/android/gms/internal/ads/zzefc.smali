.class final Lcom/google/android/gms/internal/ads/zzefc;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgi;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcfb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbjz;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzece;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzfcp;ZLcom/google/android/gms/internal/ads/zzbjz;Lcom/google/android/gms/internal/ads/zzece;Lcom/google/android/gms/internal/ads/zzdsd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefc;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzd:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzefc;->zze:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzf:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzg:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 17
    .line 18
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzh:Z

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzi:Lcom/google/android/gms/internal/ads/zzece;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfbu;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefc;->zzd:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwg;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdex;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzefc;->zze:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaq(Z)V

    .line 15
    .line 16
    .line 17
    new-instance v7, Lcom/google/android/gms/ads/internal/zzl;

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzh:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzg:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbjz;->zze(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    move v8, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v8, v4

    .line 33
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzefc;->zza:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzg:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbjz;->zzd()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    :cond_1
    move v10, v4

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzg:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbjz;->zza()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    :goto_1
    move v11, v3

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v3, 0x0

    .line 62
    goto :goto_1

    .line 63
    :goto_2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzd:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 64
    .line 65
    iget-boolean v14, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzO:Z

    .line 66
    .line 67
    const/4 v15, 0x0

    .line 68
    const/4 v12, -0x1

    .line 69
    move/from16 v13, p1

    .line 70
    .line 71
    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    .line 72
    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwg;->zzf()V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 80
    .line 81
    .line 82
    move v4, v2

    .line 83
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdex;->zzh()Lcom/google/android/gms/internal/ads/zzdfx;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    move-object v10, v7

    .line 90
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzQ:I

    .line 91
    .line 92
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 93
    .line 94
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzB:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzs:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 97
    .line 98
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzfbz;->zzb:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v12, v5, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzf:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfbu;->zzb()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzi:Lcom/google/android/gms/internal/ads/zzece;

    .line 111
    .line 112
    :goto_3
    move-object v15, v3

    .line 113
    goto :goto_4

    .line 114
    :cond_4
    const/4 v3, 0x0

    .line 115
    goto :goto_3

    .line 116
    :goto_4
    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcbw;->zzr()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v16

    .line 122
    const/4 v3, 0x0

    .line 123
    const/4 v5, 0x0

    .line 124
    move v14, v4

    .line 125
    move-object v4, v1

    .line 126
    move v1, v14

    .line 127
    move-object/from16 v14, p3

    .line 128
    .line 129
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcfb;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwg;Lcom/google/android/gms/internal/ads/zzbte;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzefc;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 133
    .line 134
    move-object/from16 v4, p2

    .line 135
    .line 136
    invoke-static {v4, v2, v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsd;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
