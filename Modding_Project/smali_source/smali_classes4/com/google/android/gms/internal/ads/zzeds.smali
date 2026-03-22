.class final Lcom/google/android/gms/internal/ads/zzeds;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgi;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfbu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcfb;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbjz;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzece;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzfcp;ZLcom/google/android/gms/internal/ads/zzbjz;Lcom/google/android/gms/internal/ads/zzece;Lcom/google/android/gms/internal/ads/zzdsd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzd:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeds;->zze:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzg:Z

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzf:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzh:Lcom/google/android/gms/internal/ads/zzece;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzi:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfbu;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

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
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcoa;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzd:Lcom/google/android/gms/internal/ads/zzcfb;

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
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzg:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzf:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbjz;->zze(Z)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    move v8, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v8, v2

    .line 32
    :goto_0
    if-eqz v3, :cond_1

    .line 33
    .line 34
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzf:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbjz;->zzd()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    :goto_1
    move v10, v4

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    const/4 v4, 0x0

    .line 43
    goto :goto_1

    .line 44
    :goto_2
    if-eqz v3, :cond_2

    .line 45
    .line 46
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzf:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbjz;->zza()F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :goto_3
    move v11, v3

    .line 53
    goto :goto_4

    .line 54
    :cond_2
    const/4 v3, 0x0

    .line 55
    goto :goto_3

    .line 56
    :goto_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzc:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 57
    .line 58
    iget-boolean v14, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzO:Z

    .line 59
    .line 60
    const/4 v15, 0x0

    .line 61
    const/4 v9, 0x1

    .line 62
    const/4 v12, -0x1

    .line 63
    move/from16 v13, p1

    .line 64
    .line 65
    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    .line 66
    .line 67
    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwg;->zzf()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 74
    .line 75
    .line 76
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcoa;->zzg()Lcom/google/android/gms/internal/ads/zzdfx;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzQ:I

    .line 83
    .line 84
    const/4 v8, -0x1

    .line 85
    if-eq v5, v8, :cond_4

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_4
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzeds;->zze:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 89
    .line 90
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzfcp;->zzj:Lcom/google/android/gms/ads/internal/client/zzx;

    .line 91
    .line 92
    if-eqz v8, :cond_6

    .line 93
    .line 94
    iget v8, v8, Lcom/google/android/gms/ads/internal/client/zzx;->zza:I

    .line 95
    .line 96
    if-ne v8, v2, :cond_5

    .line 97
    .line 98
    const/4 v5, 0x7

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    const/4 v9, 0x2

    .line 101
    if-ne v8, v9, :cond_6

    .line 102
    .line 103
    const/4 v5, 0x6

    .line 104
    goto :goto_5

    .line 105
    :cond_6
    sget v8, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 106
    .line 107
    const-string v8, "Error setting app open orientation; no targeting orientation available."

    .line 108
    .line 109
    invoke-static {v8}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_5
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzeds;->zza:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 113
    .line 114
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzB:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzfbu;->zzs:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 117
    .line 118
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfbz;->zzb:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzeds;->zze:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfbu;->zzb()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_7

    .line 129
    .line 130
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzh:Lcom/google/android/gms/internal/ads/zzece;

    .line 131
    .line 132
    :goto_6
    move-object v15, v3

    .line 133
    goto :goto_7

    .line 134
    :cond_7
    const/4 v3, 0x0

    .line 135
    goto :goto_6

    .line 136
    :goto_7
    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcbw;->zzr()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v16

    .line 142
    const/4 v3, 0x0

    .line 143
    move-object v10, v7

    .line 144
    move v7, v5

    .line 145
    const/4 v5, 0x0

    .line 146
    move-object v14, v4

    .line 147
    move-object v4, v1

    .line 148
    move v1, v2

    .line 149
    move-object v2, v14

    .line 150
    move-object/from16 v14, p3

    .line 151
    .line 152
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcfb;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwg;Lcom/google/android/gms/internal/ads/zzbte;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeds;->zzi:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 156
    .line 157
    move-object/from16 v4, p2

    .line 158
    .line 159
    invoke-static {v4, v2, v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsd;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method
