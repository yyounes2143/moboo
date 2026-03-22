.class public final Lcom/google/android/gms/internal/ads/zzit;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field final zza:Landroid/content/Context;

.field zzb:Lcom/google/android/gms/internal/ads/zzdg;

.field zzc:Lcom/google/android/gms/internal/ads/zzfvu;

.field zzd:Lcom/google/android/gms/internal/ads/zzfvu;

.field zze:Lcom/google/android/gms/internal/ads/zzfvu;

.field zzf:Lcom/google/android/gms/internal/ads/zzfvu;

.field zzg:Lcom/google/android/gms/internal/ads/zzfvu;

.field zzh:Lcom/google/android/gms/internal/ads/zzfur;

.field zzi:Landroid/os/Looper;

.field zzj:I

.field zzk:Lcom/google/android/gms/internal/ads/zze;

.field zzl:I

.field zzm:Z

.field zzn:Lcom/google/android/gms/internal/ads/zzmd;

.field zzo:J

.field zzp:J

.field zzq:Z

.field zzr:Z

.field zzs:Ljava/lang/String;

.field zzt:Lcom/google/android/gms/internal/ads/zzid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzceh;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzim;

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzim;-><init>(Lcom/google/android/gms/internal/ads/zzceh;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzin;

    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzin;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lcom/google/android/gms/internal/ads/zzio;

    .line 18
    .line 19
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Lcom/google/android/gms/internal/ads/zzip;

    .line 23
    .line 24
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzip;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v6, Lcom/google/android/gms/internal/ads/zziq;

    .line 28
    .line 29
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zziq;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    new-instance v7, Lcom/google/android/gms/internal/ads/zzir;

    .line 33
    .line 34
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzir;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zza:Landroid/content/Context;

    .line 44
    .line 45
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzit;->zzc:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 46
    .line 47
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzit;->zzd:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 48
    .line 49
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzit;->zze:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 50
    .line 51
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzit;->zzf:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 52
    .line 53
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzit;->zzg:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 54
    .line 55
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzit;->zzh:Lcom/google/android/gms/internal/ads/zzfur;

    .line 56
    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zzz()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzi:Landroid/os/Looper;

    .line 62
    .line 63
    sget-object v1, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zze;

    .line 64
    .line 65
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzk:Lcom/google/android/gms/internal/ads/zze;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzl:I

    .line 69
    .line 70
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzm:Z

    .line 71
    .line 72
    sget-object v2, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzmd;

    .line 73
    .line 74
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzit;->zzn:Lcom/google/android/gms/internal/ads/zzmd;

    .line 75
    .line 76
    sget v2, Lcom/google/android/gms/internal/ads/zzmc;->zza:I

    .line 77
    .line 78
    new-instance v3, Lcom/google/android/gms/internal/ads/zzid;

    .line 79
    .line 80
    const-wide/16 v4, 0x14

    .line 81
    .line 82
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    const-wide/16 v4, 0x1f4

    .line 87
    .line 88
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 89
    .line 90
    .line 91
    move-result-wide v11

    .line 92
    const v13, 0x3f7fbe77    # 0.999f

    .line 93
    .line 94
    .line 95
    const/4 v14, 0x0

    .line 96
    move-wide v5, v4

    .line 97
    const v4, 0x3f7851ec    # 0.97f

    .line 98
    .line 99
    .line 100
    move-wide v6, v5

    .line 101
    const v5, 0x3f83d70a    # 1.03f

    .line 102
    .line 103
    .line 104
    move-wide v15, v6

    .line 105
    const-wide/16 v6, 0x3e8

    .line 106
    .line 107
    const v8, 0x33d6bf95    # 1.0E-7f

    .line 108
    .line 109
    .line 110
    move-wide v1, v15

    .line 111
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzid;-><init>(FFJFJJFLcom/google/android/gms/internal/ads/zzic;)V

    .line 112
    .line 113
    .line 114
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzit;->zzt:Lcom/google/android/gms/internal/ads/zzid;

    .line 115
    .line 116
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    .line 117
    .line 118
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzit;->zzb:Lcom/google/android/gms/internal/ads/zzdg;

    .line 119
    .line 120
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzo:J

    .line 121
    .line 122
    const-wide/16 v1, 0x7d0

    .line 123
    .line 124
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzp:J

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzq:Z

    .line 128
    .line 129
    const-string v1, ""

    .line 130
    .line 131
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzs:Ljava/lang/String;

    .line 132
    .line 133
    const/16 v1, -0x3e8

    .line 134
    .line 135
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzj:I

    .line 136
    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 138
    .line 139
    const/16 v2, 0x23

    .line 140
    .line 141
    if-lt v1, v2, :cond_0

    .line 142
    .line 143
    sget v1, Lcom/google/android/gms/internal/ads/zzij;->zza:I

    .line 144
    .line 145
    :cond_0
    return-void
.end method

.method public static synthetic zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzva;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuo;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadi;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzadi;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzuo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzads;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
