.class public final Lcom/google/android/gms/internal/ads/zzaau;
.super Lcom/google/android/gms/internal/ads/zztj;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabk;


# static fields
.field private static final zzb:[I

.field private static zzc:Z

.field private static zzd:Z


# instance fields
.field private zzA:I

.field private zzB:I

.field private zzC:I

.field private zzD:J

.field private zzE:I

.field private zzF:J

.field private zzG:Lcom/google/android/gms/internal/ads/zzcd;

.field private zzH:Lcom/google/android/gms/internal/ads/zzcd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzI:I

.field private zzJ:I

.field private zzK:Lcom/google/android/gms/internal/ads/zzabi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzL:J

.field private zzM:J

.field private zzN:Z

.field private zzO:Z

.field private zzP:I

.field private final zze:Landroid/content/Context;

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzacb;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzabl;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzabj;

.field private final zzk:J

.field private final zzl:Ljava/util/PriorityQueue;

.field private zzm:Lcom/google/android/gms/internal/ads/zzaat;

.field private zzn:Z

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/internal/ads/zzach;

.field private zzq:Z

.field private zzr:I

.field private zzs:Ljava/util/List;

.field private zzt:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzu:Lcom/google/android/gms/internal/ads/zzaax;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzv:Lcom/google/android/gms/internal/ads/zzel;

.field private zzw:Z

.field private zzx:I

.field private zzy:I

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzaau;->zzb:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaas;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaas;->zzc(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzsx;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaas;->zzd(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zztl;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/4 v4, 0x0

    .line 10
    const/high16 v5, 0x41f00000    # 30.0f

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zztj;-><init>(ILcom/google/android/gms/internal/ads/zzsx;Lcom/google/android/gms/internal/ads/zztl;ZF)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaas;->zza(Lcom/google/android/gms/internal/ads/zzaas;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zze:Landroid/content/Context;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 29
    .line 30
    new-instance v3, Lcom/google/android/gms/internal/ads/zzacb;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaas;->zzb(Lcom/google/android/gms/internal/ads/zzaas;)Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaas;->zzi(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzacc;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzacb;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzacc;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 44
    .line 45
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    move p1, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move p1, v4

    .line 54
    :goto_0
    iput-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzf:Z

    .line 55
    .line 56
    new-instance p1, Lcom/google/android/gms/internal/ads/zzabl;

    .line 57
    .line 58
    const-wide/16 v5, 0x0

    .line 59
    .line 60
    invoke-direct {p1, v1, p0, v5, v6}, Lcom/google/android/gms/internal/ads/zzabl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzabk;J)V

    .line 61
    .line 62
    .line 63
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 64
    .line 65
    new-instance p1, Lcom/google/android/gms/internal/ads/zzabj;

    .line 66
    .line 67
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzabj;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzj:Lcom/google/android/gms/internal/ads/zzabj;

    .line 71
    .line 72
    const-string p1, "NVIDIA"

    .line 73
    .line 74
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzh:Z

    .line 81
    .line 82
    sget-object p1, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    .line 83
    .line 84
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzv:Lcom/google/android/gms/internal/ads/zzel;

    .line 85
    .line 86
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzx:I

    .line 87
    .line 88
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzy:I

    .line 89
    .line 90
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 91
    .line 92
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    .line 93
    .line 94
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzJ:I

    .line 95
    .line 96
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzH:Lcom/google/android/gms/internal/ads/zzcd;

    .line 97
    .line 98
    const/16 p1, -0x3e8

    .line 99
    .line 100
    iput p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzI:I

    .line 101
    .line 102
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzL:J

    .line 108
    .line 109
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzM:J

    .line 110
    .line 111
    new-instance p1, Ljava/util/PriorityQueue;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzl:Ljava/util/PriorityQueue;

    .line 117
    .line 118
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzk:J

    .line 119
    .line 120
    return-void
.end method

.method public static final zzaW(Ljava/lang/String;)Z
    .locals 17

    .line 1
    const-string v0, "OMX.google"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-class v2, Lcom/google/android/gms/internal/ads/zzaau;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaau;->zzc:Z

    if-nez v0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-gt v0, v3, :cond_2

    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v13, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    const-string v13, "machuca"

    .line 4
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v10

    goto :goto_1

    :sswitch_1
    const-string v13, "once"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v9

    goto :goto_1

    :sswitch_2
    const-string v13, "magnolia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v8

    goto :goto_1

    :sswitch_3
    const-string v13, "aquaman"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v1

    goto :goto_1

    :sswitch_4
    const-string v13, "oneday"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v7

    goto :goto_1

    :sswitch_5
    const-string v13, "dangalUHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v6

    goto :goto_1

    :sswitch_6
    const-string v13, "dangalFHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v5

    goto :goto_1

    :sswitch_7
    const-string v13, "dangal"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v12, v4

    :goto_1
    packed-switch v12, :pswitch_data_0

    goto :goto_3

    :goto_2
    :pswitch_0
    move v1, v11

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_2
    :goto_3
    const/16 v12, 0x1b

    if-gt v0, v12, :cond_3

    :try_start_1
    const-string v13, "HWEML"

    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 5
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v15, 0x8

    sparse-switch v14, :sswitch_data_1

    goto/16 :goto_4

    .line 8
    :sswitch_8
    const-string v14, "AFTEUFF014"

    .line 9
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v10

    goto :goto_5

    :sswitch_9
    const-string v14, "AFTSO001"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v15

    goto :goto_5

    :sswitch_a
    const-string v14, "AFTEU014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v8

    goto :goto_5

    :sswitch_b
    const-string v14, "AFTEU011"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v5

    goto :goto_5

    :sswitch_c
    const-string v14, "AFTR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v6

    goto :goto_5

    :sswitch_d
    const-string v14, "AFTN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v11

    goto :goto_5

    :sswitch_e
    const-string v14, "AFTA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v1

    goto :goto_5

    :sswitch_f
    const-string v14, "AFTKMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v7

    goto :goto_5

    :sswitch_10
    const-string v14, "AFTJMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v14, v9

    goto :goto_5

    :cond_4
    :goto_4
    move v14, v4

    :goto_5
    packed-switch v14, :pswitch_data_1

    const/16 v14, 0x1a

    if-gt v0, v14, :cond_7

    :try_start_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sparse-switch v16, :sswitch_data_2

    goto/16 :goto_6

    .line 11
    :sswitch_11
    const-string v3, "HWWAS-H"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x42

    goto/16 :goto_7

    :sswitch_12
    const-string v3, "HWVNS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x41

    goto/16 :goto_7

    :sswitch_13
    const-string v3, "ELUGA_Prim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x21

    goto/16 :goto_7

    :sswitch_14
    const-string v3, "ELUGA_Note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x20

    goto/16 :goto_7

    :sswitch_15
    const-string v3, "ASUS_X00AD_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xe

    goto/16 :goto_7

    :sswitch_16
    const-string v3, "HWCAM-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x40

    goto/16 :goto_7

    :sswitch_17
    const-string v3, "HWBLN-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x3f

    goto/16 :goto_7

    :sswitch_18
    const-string v3, "DM-01K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x1d

    goto/16 :goto_7

    :sswitch_19
    const-string v3, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x13

    goto/16 :goto_7

    :sswitch_1a
    const-string v3, "Infinix-X572"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x45

    goto/16 :goto_7

    :sswitch_1b
    const-string v3, "PB2-670M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x64

    goto/16 :goto_7

    :sswitch_1c
    const-string v3, "santoni"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x75

    goto/16 :goto_7

    :sswitch_1d
    const-string v3, "iball8735_9806"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x44

    goto/16 :goto_7

    :sswitch_1e
    const-string v3, "CPH1715"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x18

    goto/16 :goto_7

    :sswitch_1f
    const-string v3, "CPH1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x17

    goto/16 :goto_7

    :sswitch_20
    const-string v3, "woods_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x85

    goto/16 :goto_7

    :sswitch_21
    const-string v3, "htc_e56ml_dtul"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x3d

    goto/16 :goto_7

    :sswitch_22
    const-string v3, "EverStar_S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x23

    goto/16 :goto_7

    :sswitch_23
    const-string v3, "hwALE-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x3e

    goto/16 :goto_7

    :sswitch_24
    const-string v3, "itel_S41"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x47

    goto/16 :goto_7

    :sswitch_25
    const-string v3, "LS-5017"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x4e

    goto/16 :goto_7

    :sswitch_26
    const-string v3, "panell_d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x60

    goto/16 :goto_7

    :sswitch_27
    const-string v3, "j2xlteins"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x48

    goto/16 :goto_7

    :sswitch_28
    const-string v3, "A7000plus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xa

    goto/16 :goto_7

    :sswitch_29
    const-string v3, "manning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x51

    goto/16 :goto_7

    :sswitch_2a
    const-string v3, "GIONEE_WBL7519"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x3b

    goto/16 :goto_7

    :sswitch_2b
    const-string v3, "GIONEE_WBL7365"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x3a

    goto/16 :goto_7

    :sswitch_2c
    const-string v3, "GIONEE_WBL5708"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x39

    goto/16 :goto_7

    :sswitch_2d
    const-string v3, "QM16XE_U"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x72

    goto/16 :goto_7

    :sswitch_2e
    const-string v3, "Pixi5-10_4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x6a

    goto/16 :goto_7

    :sswitch_2f
    const-string v3, "TB3-850M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x7d

    goto/16 :goto_7

    :sswitch_30
    const-string v3, "TB3-850F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x7c

    goto/16 :goto_7

    :sswitch_31
    const-string v3, "TB3-730X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x7b

    goto/16 :goto_7

    :sswitch_32
    const-string v3, "TB3-730F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x7a

    goto/16 :goto_7

    :sswitch_33
    const-string v3, "A7020a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xc

    goto/16 :goto_7

    :sswitch_34
    const-string v3, "A7010a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xb

    goto/16 :goto_7

    :sswitch_35
    const-string v3, "griffin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x3c

    goto/16 :goto_7

    :sswitch_36
    const-string v3, "marino_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x52

    goto/16 :goto_7

    :sswitch_37
    const-string v3, "CPY83_I00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x19

    goto/16 :goto_7

    :sswitch_38
    const-string v3, "A2016a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v15

    goto/16 :goto_7

    :sswitch_39
    const-string v3, "le_x6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x4d

    goto/16 :goto_7

    :sswitch_3a
    const-string v3, "l5460"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x4c

    goto/16 :goto_7

    :sswitch_3b
    const-string v3, "i9031"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x43

    goto/16 :goto_7

    :sswitch_3c
    const-string v3, "X3_HK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x87

    goto/16 :goto_7

    :sswitch_3d
    const-string v3, "V23GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x80

    goto/16 :goto_7

    :sswitch_3e
    const-string v3, "Q4310"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x70

    goto/16 :goto_7

    :sswitch_3f
    const-string v3, "Q4260"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x6e

    goto/16 :goto_7

    :sswitch_40
    const-string v3, "PRO7S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x6c

    goto/16 :goto_7

    :sswitch_41
    const-string v3, "F3311"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x30

    goto/16 :goto_7

    :sswitch_42
    const-string v3, "F3215"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x2f

    goto/16 :goto_7

    :sswitch_43
    const-string v3, "F3213"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x2e

    goto/16 :goto_7

    :sswitch_44
    const-string v3, "F3211"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x2d

    goto/16 :goto_7

    :sswitch_45
    const-string v3, "F3116"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x2c

    goto/16 :goto_7

    :sswitch_46
    const-string v3, "F3113"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x2b

    goto/16 :goto_7

    :sswitch_47
    const-string v3, "F3111"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x2a

    goto/16 :goto_7

    :sswitch_48
    const-string v3, "E5643"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x1e

    goto/16 :goto_7

    :sswitch_49
    const-string v3, "A1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v7

    goto/16 :goto_7

    :sswitch_4a
    const-string v3, "Aura_Note_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xf

    goto/16 :goto_7

    :sswitch_4b
    const-string v3, "602LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v8

    goto/16 :goto_7

    :sswitch_4c
    const-string v3, "601LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v5

    goto/16 :goto_7

    :sswitch_4d
    const-string v3, "MEIZU_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x53

    goto/16 :goto_7

    :sswitch_4e
    const-string v3, "p212"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x5c

    goto/16 :goto_7

    :sswitch_4f
    const-string v3, "mido"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x55

    goto/16 :goto_7

    :sswitch_50
    const-string v3, "kate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x4b

    goto/16 :goto_7

    :sswitch_51
    const-string v3, "fugu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x32

    goto/16 :goto_7

    :sswitch_52
    const-string v3, "XE2X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x88

    goto/16 :goto_7

    :sswitch_53
    const-string v3, "Q427"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x6f

    goto/16 :goto_7

    :sswitch_54
    const-string v3, "Q350"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x6d

    goto/16 :goto_7

    :sswitch_55
    const-string v3, "P681"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x5d

    goto/16 :goto_7

    :sswitch_56
    const-string v3, "F04J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x29

    goto/16 :goto_7

    :sswitch_57
    const-string v3, "F04H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x28

    goto/16 :goto_7

    :sswitch_58
    const-string v3, "F03H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x27

    goto/16 :goto_7

    :sswitch_59
    const-string v3, "F02H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x26

    goto/16 :goto_7

    :sswitch_5a
    const-string v3, "F01J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x25

    goto/16 :goto_7

    :sswitch_5b
    const-string v3, "F01H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x24

    goto/16 :goto_7

    :sswitch_5c
    const-string v3, "1714"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v6

    goto/16 :goto_7

    :sswitch_5d
    const-string v3, "1713"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v11

    goto/16 :goto_7

    :sswitch_5e
    const-string v3, "1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v1

    goto/16 :goto_7

    :sswitch_5f
    const-string v3, "flo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x31

    goto/16 :goto_7

    :sswitch_60
    const-string v5, "deb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_7

    :sswitch_61
    const-string v3, "cv3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v12

    goto/16 :goto_7

    :sswitch_62
    const-string v3, "cv1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v14

    goto/16 :goto_7

    :sswitch_63
    const-string v3, "Z80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x8b

    goto/16 :goto_7

    :sswitch_64
    const-string v3, "QX1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x73

    goto/16 :goto_7

    :sswitch_65
    const-string v3, "PLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x6b

    goto/16 :goto_7

    :sswitch_66
    const-string v3, "P85"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x5e

    goto/16 :goto_7

    :sswitch_67
    const-string v3, "MX6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x56

    goto/16 :goto_7

    :sswitch_68
    const-string v3, "M5c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x50

    goto/16 :goto_7

    :sswitch_69
    const-string v3, "M04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x4f

    goto/16 :goto_7

    :sswitch_6a
    const-string v3, "JGZ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x49

    goto/16 :goto_7

    :sswitch_6b
    const-string v3, "mh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x54

    goto/16 :goto_7

    :sswitch_6c
    const-string v3, "b5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x10

    goto/16 :goto_7

    :sswitch_6d
    const-string v3, "V5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x81

    goto/16 :goto_7

    :sswitch_6e
    const-string v3, "V1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x7f

    goto/16 :goto_7

    :sswitch_6f
    const-string v3, "Q5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x71

    goto/16 :goto_7

    :sswitch_70
    const-string v3, "C1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x14

    goto/16 :goto_7

    :sswitch_71
    const-string v3, "woods_fn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x86

    goto/16 :goto_7

    :sswitch_72
    const-string v3, "ELUGA_A3_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x1f

    goto/16 :goto_7

    :sswitch_73
    const-string v3, "Z12_PRO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x8a

    goto/16 :goto_7

    :sswitch_74
    const-string v3, "BLACK-1X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x11

    goto/16 :goto_7

    :sswitch_75
    const-string v3, "taido_row"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x79

    goto/16 :goto_7

    :sswitch_76
    const-string v3, "Pixi4-7_3G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x69

    goto/16 :goto_7

    :sswitch_77
    const-string v3, "GIONEE_GBL7360"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x35

    goto/16 :goto_7

    :sswitch_78
    const-string v3, "GiONEE_CBL7513"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x33

    goto/16 :goto_7

    :sswitch_79
    const-string v3, "OnePlus5T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x5b

    goto/16 :goto_7

    :sswitch_7a
    const-string v3, "whyred"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x84

    goto/16 :goto_7

    :sswitch_7b
    const-string v3, "watson"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x83

    goto/16 :goto_7

    :sswitch_7c
    const-string v3, "SVP-DTV15"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x77

    goto/16 :goto_7

    :sswitch_7d
    const-string v3, "A7000-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x9

    goto/16 :goto_7

    :sswitch_7e
    const-string v3, "nicklaus_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x58

    goto/16 :goto_7

    :sswitch_7f
    const-string v3, "tcl_eu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x7e

    goto/16 :goto_7

    :sswitch_80
    const-string v3, "ELUGA_Ray_X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x22

    goto/16 :goto_7

    :sswitch_81
    const-string v3, "s905x018"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x78

    goto/16 :goto_7

    :sswitch_82
    const-string v3, "A10-70L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v9

    goto/16 :goto_7

    :sswitch_83
    const-string v3, "A10-70F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v10

    goto/16 :goto_7

    :sswitch_84
    const-string v3, "namath"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x57

    goto/16 :goto_7

    :sswitch_85
    const-string v3, "Slate_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x76

    goto/16 :goto_7

    :sswitch_86
    const-string v3, "iris60"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x46

    goto/16 :goto_7

    :sswitch_87
    const-string v3, "BRAVIA_ATV2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x12

    goto/16 :goto_7

    :sswitch_88
    const-string v3, "GiONEE_GBL7319"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x34

    goto/16 :goto_7

    :sswitch_89
    const-string v3, "panell_dt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x63

    goto/16 :goto_7

    :sswitch_8a
    const-string v3, "panell_ds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x62

    goto/16 :goto_7

    :sswitch_8b
    const-string v3, "panell_dl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x61

    goto/16 :goto_7

    :sswitch_8c
    const-string v3, "vernee_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x82

    goto/16 :goto_7

    :sswitch_8d
    const-string v3, "pacificrim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x5f

    goto/16 :goto_7

    :sswitch_8e
    const-string v3, "Phantom6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x68

    goto/16 :goto_7

    :sswitch_8f
    const-string v3, "ComioS1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x15

    goto/16 :goto_7

    :sswitch_90
    const-string v3, "XT1663"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x89

    goto/16 :goto_7

    :sswitch_91
    const-string v3, "RAIJIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x74

    goto/16 :goto_7

    :sswitch_92
    const-string v3, "AquaPowerM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0xd

    goto/16 :goto_7

    :sswitch_93
    const-string v3, "PGN611"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x67

    goto/16 :goto_7

    :sswitch_94
    const-string v3, "PGN610"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x66

    goto :goto_7

    :sswitch_95
    const-string v3, "PGN528"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x65

    goto :goto_7

    :sswitch_96
    const-string v3, "NX573J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x5a

    goto :goto_7

    :sswitch_97
    const-string v3, "NX541J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x59

    goto :goto_7

    :sswitch_98
    const-string v3, "CP8676_I02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x16

    goto :goto_7

    :sswitch_99
    const-string v3, "K50a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x4a

    goto :goto_7

    :sswitch_9a
    const-string v3, "GIONEE_SWW1631"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x38

    goto :goto_7

    :sswitch_9b
    const-string v3, "GIONEE_SWW1627"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x37

    goto :goto_7

    :sswitch_9c
    const-string v3, "GIONEE_SWW1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v3, 0x36

    goto :goto_7

    :cond_5
    :goto_6
    move v3, v4

    :goto_7
    packed-switch v3, :pswitch_data_2

    .line 13
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const v3, -0x236fe21d

    if-eq v0, v3, :cond_6

    goto :goto_8

    :cond_6
    const-string v0, "JSN-L21"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_2

    .line 14
    :cond_7
    :goto_8
    :try_start_4
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzaau;->zzd:Z

    sput-boolean v11, Lcom/google/android/gms/internal/ads/zzaau;->zzc:Z

    .line 15
    :cond_8
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaau;->zzd:Z

    return v0

    :goto_9
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final zzaX(Lcom/google/android/gms/internal/ads/zztc;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzh:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private final zzaY(Lcom/google/android/gms/internal/ads/zztc;)Landroid/view/Surface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzb()Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzaX(Lcom/google/android/gms/internal/ads/zztc;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzaV(Lcom/google/android/gms/internal/ads/zztc;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzu:Lcom/google/android/gms/internal/ads/zzaax;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zztc;->zzf:Z

    .line 35
    .line 36
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaax;->zza:Z

    .line 37
    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzbd()V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzu:Lcom/google/android/gms/internal/ads/zzaax;

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zze:Landroid/content/Context;

    .line 48
    .line 49
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zztc;->zzf:Z

    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzaax;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzu:Lcom/google/android/gms/internal/ads/zzaax;

    .line 56
    .line 57
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzu:Lcom/google/android/gms/internal/ads/zzaax;

    .line 58
    .line 59
    return-object p1
.end method

.method private static zzaZ(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1a

    .line 13
    .line 14
    if-lt v1, v2, :cond_1

    .line 15
    .line 16
    const-string v1, "video/dolby-vision"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaar;->zza(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zztw;->zzc(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zztw;->zze(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static zzad(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 11

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 2
    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eq v0, v2, :cond_7

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string v4, "video/dolby-vision"

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const-string v5, "video/avc"

    .line 24
    .line 25
    const-string v6, "video/av01"

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    const/4 v8, 0x1

    .line 29
    const-string v9, "video/hevc"

    .line 30
    .line 31
    if-eqz v4, :cond_4

    .line 32
    .line 33
    sget v3, Lcom/google/android/gms/internal/ads/zztw;->zza:I

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/16 v3, 0x200

    .line 50
    .line 51
    if-eq p1, v3, :cond_2

    .line 52
    .line 53
    if-eq p1, v8, :cond_2

    .line 54
    .line 55
    if-ne p1, v7, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v3, 0x400

    .line 59
    .line 60
    if-ne p1, v3, :cond_3

    .line 61
    .line 62
    move-object v3, v6

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    move-object v3, v5

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v3, v9

    .line 67
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v4, 0x3

    .line 72
    const/4 v10, 0x4

    .line 73
    sparse-switch p1, :sswitch_data_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    const/4 v7, 0x6

    .line 86
    goto :goto_3

    .line 87
    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    .line 88
    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    move v7, v4

    .line 96
    goto :goto_3

    .line 97
    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    const/4 v7, 0x5

    .line 104
    goto :goto_3

    .line 105
    :sswitch_3
    const-string p1, "video/mp4v-es"

    .line 106
    .line 107
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    move v7, v8

    .line 114
    goto :goto_3

    .line 115
    :sswitch_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    move v7, v10

    .line 122
    goto :goto_3

    .line 123
    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :sswitch_6
    const-string p1, "video/3gpp"

    .line 131
    .line 132
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    :goto_2
    move v7, v2

    .line 141
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :pswitch_0
    const/16 v10, 0x8

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :pswitch_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 149
    .line 150
    const-string v3, "BRAVIA 4K 2015"

    .line 151
    .line 152
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_7

    .line 157
    .line 158
    const-string v3, "Amazon"

    .line 159
    .line 160
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_6

    .line 167
    .line 168
    const-string v3, "KFSOWI"

    .line 169
    .line 170
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-nez v3, :cond_7

    .line 175
    .line 176
    const-string v3, "AFTS"

    .line 177
    .line 178
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_6

    .line 183
    .line 184
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zztc;->zzf:Z

    .line 185
    .line 186
    if-nez p0, :cond_7

    .line 187
    .line 188
    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 189
    .line 190
    add-int/lit8 v0, v0, 0xf

    .line 191
    .line 192
    add-int/lit8 v1, v1, 0xf

    .line 193
    .line 194
    div-int/lit8 v0, v0, 0x10

    .line 195
    .line 196
    div-int/lit8 v1, v1, 0x10

    .line 197
    .line 198
    mul-int/2addr v0, v1

    .line 199
    mul-int/lit16 v0, v0, 0x300

    .line 200
    .line 201
    div-int/2addr v0, v10

    .line 202
    return v0

    .line 203
    :pswitch_2
    mul-int/2addr v0, v1

    .line 204
    mul-int/2addr v0, v4

    .line 205
    div-int/2addr v0, v10

    .line 206
    const/high16 p0, 0x200000

    .line 207
    .line 208
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    return p0

    .line 213
    :goto_4
    :pswitch_3
    mul-int/2addr v0, v1

    .line 214
    mul-int/2addr v0, v4

    .line 215
    div-int/2addr v0, v10

    .line 216
    return v0

    .line 217
    :cond_7
    :goto_5
    return v2

    .line 218
    nop

    .line 219
    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzae(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 4

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzp:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-ge v1, p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, [B

    .line 21
    .line 22
    array-length v3, v3

    .line 23
    add-int/2addr v2, v3

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    add-int/2addr v0, v2

    .line 28
    return v0

    .line 29
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzad(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public static bridge synthetic zzah(Lcom/google/android/gms/internal/ads/zzaau;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzai(Lcom/google/android/gms/internal/ads/zzaau;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzbc()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzba()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzH:Lcom/google/android/gms/internal/ads/zzcd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacb;->zzt(Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final zzbb(JJLcom/google/android/gms/internal/ads/zzz;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzK:Lcom/google/android/gms/internal/ads/zzabi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaw()Landroid/media/MediaFormat;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    move-wide v1, p1

    .line 10
    move-wide v3, p3

    .line 11
    move-object v5, p5

    .line 12
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzabi;->zzcT(JJLcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final zzbc()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzacb;->zzq(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzw:Z

    .line 10
    .line 11
    return-void
.end method

.method private final zzbd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzu:Lcom/google/android/gms/internal/ads/zzaax;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaax;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzu:Lcom/google/android/gms/internal/ads/zzaax;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final zzbe(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/view/Surface;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 11
    .line 12
    if-eq v0, p1, :cond_9

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzk(Landroid/view/Surface;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzw:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzcU()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaz()Lcom/google/android/gms/internal/ads/zzsz;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 39
    .line 40
    if-nez v3, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaB()Lcom/google/android/gms/internal/ads/zztc;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzaau;->zzbf(Lcom/google/android/gms/internal/ads/zztc;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzn:Z

    .line 56
    .line 57
    if-nez v4, :cond_4

    .line 58
    .line 59
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzaau;->zzaY(Lcom/google/android/gms/internal/ads/zztc;)Landroid/view/Surface;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzsz;->zzp(Landroid/view/Surface;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v4, 0x23

    .line 72
    .line 73
    if-lt v3, v4, :cond_3

    .line 74
    .line 75
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzsz;->zzi()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaG()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaD()V

    .line 89
    .line 90
    .line 91
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzba()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzH:Lcom/google/android/gms/internal/ads/zzcd;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzach;->zzi()V

    .line 104
    .line 105
    .line 106
    :cond_7
    :goto_2
    const/4 p1, 0x2

    .line 107
    if-ne v0, p1, :cond_a

    .line 108
    .line 109
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 110
    .line 111
    const/4 v0, 0x1

    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzach;->zzk(Z)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzc(Z)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_9
    if-eqz p1, :cond_a

    .line 125
    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzba()V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 130
    .line 131
    if-eqz p1, :cond_a

    .line 132
    .line 133
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzw:Z

    .line 134
    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacb;->zzq(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_a
    return-void
.end method

.method private final zzbf(Lcom/google/android/gms/internal/ads/zztc;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzaX(Lcom/google/android/gms/internal/ads/zztc;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzaV(Lcom/google/android/gms/internal/ads/zztc;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 31
    return p1
.end method


# virtual methods
.method public final zzA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzf:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzn()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzC()V
    .locals 4

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzq:Z

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzL:J

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzbd()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v3

    .line 19
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzq:Z

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzL:J

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzbd()V

    .line 24
    .line 25
    .line 26
    throw v3
.end method

.method public final zzD()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzA:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzz:J

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzD:J

    .line 17
    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzE:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzx()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zzE()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzA:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzz:J

    .line 15
    .line 16
    sub-long v4, v2, v4

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 19
    .line 20
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzA:I

    .line 21
    .line 22
    invoke-virtual {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzacb;->zzn(IJ)V

    .line 23
    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzA:I

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzz:J

    .line 28
    .line 29
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzE:I

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzD:J

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzacb;->zzr(JI)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzD:J

    .line 43
    .line 44
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzE:I

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzy()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabl;->zze()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final zzF([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzvb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zztj;->zzF([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzvb;)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzh()Lcom/google/android/gms/internal/ads/zzbl;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaau;->zzM:J

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p3, p6, Lcom/google/android/gms/internal/ads/zzvb;->zza:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbj;

    .line 26
    .line 27
    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/zzbj;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-wide p2, p2, Lcom/google/android/gms/internal/ads/zzbj;->zzd:J

    .line 35
    .line 36
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaau;->zzM:J

    .line 37
    .line 38
    return-void
.end method

.method public final zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztj;->zzM(FF)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzt(F)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzl(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzU()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzV(JJ)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzach;->zzo(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzacg; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzacg;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    const/16 p4, 0x1b59

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhz;->zzcX(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzik;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    throw p1

    .line 20
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zztj;->zzV(JJ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final zzW()Z
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzW()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzB()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    return v2

    .line 21
    :cond_1
    return v1
.end method

.method public final zzX()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzX()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzach;->zzD(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaz()Lcom/google/android/gms/internal/ads/zzsz;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzm(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public final zzZ(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    .line 4
    move v1, v0

    .line 5
    :goto_0
    array-length v2, p3

    .line 6
    if-ge p2, v2, :cond_1

    .line 7
    .line 8
    aget-object v2, p3, p2

    .line 9
    .line 10
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    .line 11
    .line 12
    cmpl-float v3, v2, v0

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    cmpl-float p2, v1, v0

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    mul-float/2addr v1, p1

    .line 29
    return v1
.end method

.method public final zzaA(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zztc;)Lcom/google/android/gms/internal/ads/zztb;
    .locals 2
    .param p2    # Lcom/google/android/gms/internal/ads/zztc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaao;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaao;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zztc;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final zzaE(J)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztj;->zzaE(J)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzC:I

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzC:I

    .line 9
    .line 10
    return-void
.end method

.method public final zzaF(Lcom/google/android/gms/internal/ads/zzhp;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzP:I

    .line 3
    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzC:I

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzC:I

    .line 9
    .line 10
    return-void
.end method

.method public final zzaH()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaH()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzl:Ljava/util/PriorityQueue;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzO:Z

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzC:I

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzP:I

    .line 15
    .line 16
    return-void
.end method

.method public final zzaK()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaB()Lcom/google/android/gms/internal/ads/zztc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "c2.mtk.avc.decoder"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, "c2.mtk.hevc.decoder"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaG()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaK()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method public final zzaN(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzC()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzacg; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/16 v2, 0x1b58

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhz;->zzcX(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzik;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1

    .line 24
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public final zzaO(Lcom/google/android/gms/internal/ads/zzhp;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzQ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhj;->zzh()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzM:J

    .line 16
    .line 17
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-eqz v0, :cond_7

    .line 25
    .line 26
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhp;->zze:J

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzau()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    sub-long/2addr v2, v4

    .line 33
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzM:J

    .line 34
    .line 35
    sub-long/2addr v4, v2

    .line 36
    const-wide/32 v2, 0x186a0

    .line 37
    .line 38
    .line 39
    cmp-long v0, v4, v2

    .line 40
    .line 41
    if-lez v0, :cond_7

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhp;->zzl()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_7

    .line 48
    .line 49
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzhp;->zze:J

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzf()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    cmp-long v0, v2, v4

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    if-gez v0, :cond_1

    .line 59
    .line 60
    move v0, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v0, v1

    .line 63
    :goto_0
    if-nez v0, :cond_3

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzO:Z

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    return v1

    .line 71
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhj;->zze()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    return v1

    .line 78
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhj;->zzi()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_7

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhj;->zzb()V

    .line 85
    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 90
    .line 91
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzia;->zzd:I

    .line 92
    .line 93
    add-int/2addr v0, v2

    .line 94
    iput v0, p1, Lcom/google/android/gms/internal/ads/zzia;->zzd:I

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzO:Z

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzl:Ljava/util/PriorityQueue;

    .line 102
    .line 103
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzhp;->zze:J

    .line 104
    .line 105
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzP:I

    .line 113
    .line 114
    add-int/2addr p1, v2

    .line 115
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzP:I

    .line 116
    .line 117
    :cond_6
    :goto_2
    return v2

    .line 118
    :cond_7
    :goto_3
    return v1
.end method

.method public final zzaP(Lcom/google/android/gms/internal/ads/zztc;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzbf(Lcom/google/android/gms/internal/ads/zztc;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final zzaR(Lcom/google/android/gms/internal/ads/zzsz;IJ)V
    .locals 0

    .line 1
    const-string p3, "skipVideoBuffer"

    .line 2
    .line 3
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsz;->zzo(IZ)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 14
    .line 15
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzia;->zzf:I

    .line 16
    .line 17
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzia;->zzf:I

    .line 20
    .line 21
    return-void
.end method

.method public final zzaS(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzh:I

    .line 4
    .line 5
    add-int/2addr v1, p1

    .line 6
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzh:I

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzg:I

    .line 9
    .line 10
    add-int/2addr p1, p2

    .line 11
    add-int/2addr v1, p1

    .line 12
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzg:I

    .line 13
    .line 14
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzA:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzA:I

    .line 18
    .line 19
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzB:I

    .line 20
    .line 21
    add-int/2addr p2, p1

    .line 22
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzB:I

    .line 23
    .line 24
    iget p1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzi:I

    .line 25
    .line 26
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzi:I

    .line 31
    .line 32
    return-void
.end method

.method public final zzaT(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzk:J

    .line 4
    .line 5
    add-long/2addr v1, p1

    .line 6
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzk:J

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzl:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzia;->zzl:I

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzD:J

    .line 15
    .line 16
    add-long/2addr v0, p1

    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzD:J

    .line 18
    .line 19
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzE:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzE:I

    .line 24
    .line 25
    return-void
.end method

.method public final zzaU(JJJZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzk:J

    .line 2
    .line 3
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, p5, v0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzf()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    const-wide/32 v5, 0x30d40

    .line 19
    .line 20
    .line 21
    add-long/2addr v3, v5

    .line 22
    cmp-long v0, p3, v3

    .line 23
    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    cmp-long p5, p1, p5

    .line 27
    .line 28
    if-gez p5, :cond_0

    .line 29
    .line 30
    move p5, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move p5, v2

    .line 33
    :goto_0
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzO:Z

    .line 34
    .line 35
    :cond_1
    const-wide/32 p5, -0x7a120

    .line 36
    .line 37
    .line 38
    cmp-long p1, p1, p5

    .line 39
    .line 40
    if-gez p1, :cond_5

    .line 41
    .line 42
    if-nez p7, :cond_5

    .line 43
    .line 44
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzhz;->zzd(J)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    if-eqz p8, :cond_3

    .line 52
    .line 53
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 54
    .line 55
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzia;->zzd:I

    .line 56
    .line 57
    add-int/2addr p3, p1

    .line 58
    iput p3, p2, Lcom/google/android/gms/internal/ads/zzia;->zzd:I

    .line 59
    .line 60
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzia;->zzf:I

    .line 61
    .line 62
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzC:I

    .line 63
    .line 64
    add-int/2addr p1, p4

    .line 65
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzia;->zzf:I

    .line 66
    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzl:Ljava/util/PriorityQueue;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    add-int/2addr p3, p1

    .line 74
    iput p3, p2, Lcom/google/android/gms/internal/ads/zzia;->zzd:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 78
    .line 79
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzia;->zzj:I

    .line 80
    .line 81
    add-int/2addr p3, v1

    .line 82
    iput p3, p2, Lcom/google/android/gms/internal/ads/zzia;->zzj:I

    .line 83
    .line 84
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzl:Ljava/util/PriorityQueue;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    add-int/2addr p1, p2

    .line 91
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzC:I

    .line 92
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaau;->zzaS(II)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaJ()Z

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 100
    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzach;->zzj(Z)V

    .line 104
    .line 105
    .line 106
    :cond_4
    return v1

    .line 107
    :cond_5
    :goto_2
    return v2
.end method

.method public final zzaV(Lcom/google/android/gms/internal/ads/zztc;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaau;->zzaW(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zztc;->zzf:Z

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zze:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzb(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    return v0

    .line 25
    :cond_1
    return v1
.end method

.method public final zzaa(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzay;->zzj(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x80

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zze:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    move v3, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v3, v5

    .line 23
    :goto_0
    invoke-static {v1, p1, p2, v3, v5}, Lcom/google/android/gms/internal/ads/zzaau;->zzaZ(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    invoke-static {v1, p1, p2, v5, v5}, Lcom/google/android/gms/internal/ads/zzaau;->zzaZ(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_3

    .line 44
    .line 45
    const/16 p1, 0x81

    .line 46
    .line 47
    return p1

    .line 48
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zztj;->zzaQ(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-nez v7, :cond_4

    .line 53
    .line 54
    const/16 p1, 0x82

    .line 55
    .line 56
    return p1

    .line 57
    :cond_4
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    check-cast v7, Lcom/google/android/gms/internal/ads/zztc;

    .line 62
    .line 63
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zztc;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-nez v8, :cond_6

    .line 68
    .line 69
    move v9, v4

    .line 70
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-ge v9, v10, :cond_6

    .line 75
    .line 76
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    check-cast v10, Lcom/google/android/gms/internal/ads/zztc;

    .line 81
    .line 82
    invoke-virtual {v10, p2}, Lcom/google/android/gms/internal/ads/zztc;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-eqz v11, :cond_5

    .line 87
    .line 88
    move v8, v4

    .line 89
    move v6, v5

    .line 90
    move-object v7, v10

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    move v6, v4

    .line 96
    :goto_2
    if-eq v4, v8, :cond_7

    .line 97
    .line 98
    const/4 v9, 0x3

    .line 99
    goto :goto_3

    .line 100
    :cond_7
    const/4 v9, 0x4

    .line 101
    :goto_3
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zztc;->zzf(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eq v4, v10, :cond_8

    .line 106
    .line 107
    const/16 v10, 0x8

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_8
    const/16 v10, 0x10

    .line 111
    .line 112
    :goto_4
    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zztc;->zzg:Z

    .line 113
    .line 114
    if-eq v4, v7, :cond_9

    .line 115
    .line 116
    move v7, v5

    .line 117
    goto :goto_5

    .line 118
    :cond_9
    const/16 v7, 0x40

    .line 119
    .line 120
    :goto_5
    if-eq v4, v6, :cond_a

    .line 121
    .line 122
    move v2, v5

    .line 123
    :cond_a
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    const/16 v11, 0x1a

    .line 126
    .line 127
    if-lt v6, v11, :cond_b

    .line 128
    .line 129
    const-string v6, "video/dolby-vision"

    .line 130
    .line 131
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_b

    .line 136
    .line 137
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaar;->zza(Landroid/content/Context;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_b

    .line 142
    .line 143
    const/16 v2, 0x100

    .line 144
    .line 145
    :cond_b
    if-eqz v8, :cond_c

    .line 146
    .line 147
    invoke-static {v1, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaau;->zzaZ(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_c

    .line 156
    .line 157
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zztw;->zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzz;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lcom/google/android/gms/internal/ads/zztc;

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztc;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_c

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztc;->zzf(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_c

    .line 178
    .line 179
    const/16 v5, 0x20

    .line 180
    .line 181
    :cond_c
    or-int p1, v9, v10

    .line 182
    .line 183
    or-int/2addr p1, v5

    .line 184
    or-int/2addr p1, v7

    .line 185
    or-int/2addr p1, v2

    .line 186
    return p1
.end method

.method public final zzab(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzib;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztc;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzib;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzib;->zze:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzm:Lcom/google/android/gms/internal/ads/zzaat;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v3, p3, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 13
    .line 14
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaat;->zza:I

    .line 15
    .line 16
    if-gt v3, v4, :cond_0

    .line 17
    .line 18
    iget v3, p3, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 19
    .line 20
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaat;->zzb:I

    .line 21
    .line 22
    if-le v3, v4, :cond_1

    .line 23
    .line 24
    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 25
    .line 26
    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzaau;->zzae(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaat;->zzc:I

    .line 31
    .line 32
    if-le v3, v2, :cond_2

    .line 33
    .line 34
    or-int/lit8 v1, v1, 0x40

    .line 35
    .line 36
    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v2, Lcom/google/android/gms/internal/ads/zzib;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    move v6, p1

    .line 44
    move v7, v1

    .line 45
    :goto_0
    move-object v4, p2

    .line 46
    move-object v5, p3

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzib;->zzd:I

    .line 49
    .line 50
    move v7, p1

    .line 51
    move v6, v0

    .line 52
    goto :goto_0

    .line 53
    :goto_1
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzib;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    .line 54
    .line 55
    .line 56
    return-object v2
.end method

.method public final zzac(Lcom/google/android/gms/internal/ads/zzkq;)Lcom/google/android/gms/internal/ads/zzib;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zztj;->zzac(Lcom/google/android/gms/internal/ads/zzkq;)Lcom/google/android/gms/internal/ads/zzib;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzacb;->zzp(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzib;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final zzaf(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsw;
    .locals 22
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhz;->zzT()[Lcom/google/android/gms/internal/ads/zzz;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    array-length v5, v4

    .line 14
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzaau;->zzae(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 19
    .line 20
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 21
    .line 22
    const/4 v10, -0x1

    .line 23
    const/4 v12, 0x1

    .line 24
    if-ne v5, v12, :cond_1

    .line 25
    .line 26
    if-eq v6, v10, :cond_0

    .line 27
    .line 28
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzaau;->zzad(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eq v4, v10, :cond_0

    .line 33
    .line 34
    int-to-float v5, v6

    .line 35
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 36
    .line 37
    mul-float/2addr v5, v6

    .line 38
    float-to-int v5, v5

    .line 39
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaat;

    .line 44
    .line 45
    invoke-direct {v4, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(III)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_e

    .line 49
    .line 50
    :cond_1
    move v9, v7

    .line 51
    move v15, v8

    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v14, 0x0

    .line 54
    :goto_0
    if-ge v13, v5, :cond_6

    .line 55
    .line 56
    aget-object v11, v4, v13

    .line 57
    .line 58
    move/from16 v16, v12

    .line 59
    .line 60
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    .line 61
    .line 62
    if-eqz v12, :cond_2

    .line 63
    .line 64
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    .line 65
    .line 66
    if-nez v10, :cond_2

    .line 67
    .line 68
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/zzx;->zzD(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzx;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    :cond_2
    invoke-virtual {v1, v2, v11}, Lcom/google/android/gms/internal/ads/zztc;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzib;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzib;->zzd:I

    .line 84
    .line 85
    if-eqz v10, :cond_5

    .line 86
    .line 87
    iget v10, v11, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 88
    .line 89
    const/4 v12, -0x1

    .line 90
    if-eq v10, v12, :cond_4

    .line 91
    .line 92
    move-object/from16 v17, v4

    .line 93
    .line 94
    iget v4, v11, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 95
    .line 96
    if-ne v4, v12, :cond_3

    .line 97
    .line 98
    :goto_1
    move/from16 v4, v16

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const/4 v4, 0x0

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    move-object/from16 v17, v4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :goto_2
    or-int/2addr v14, v4

    .line 107
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    .line 108
    .line 109
    .line 110
    move-result v15

    .line 111
    iget v4, v11, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 112
    .line 113
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzaau;->zzae(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    move v6, v4

    .line 126
    goto :goto_3

    .line 127
    :cond_5
    move-object/from16 v17, v4

    .line 128
    .line 129
    const/4 v12, -0x1

    .line 130
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 131
    .line 132
    move v10, v12

    .line 133
    move/from16 v12, v16

    .line 134
    .line 135
    move-object/from16 v4, v17

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    move/from16 v16, v12

    .line 139
    .line 140
    if-eqz v14, :cond_10

    .line 141
    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v5, "Resolutions unknown. Codec max resolution: "

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v5, "x"

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    const-string v10, "MediaCodecVideoRenderer"

    .line 168
    .line 169
    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    if-le v7, v8, :cond_7

    .line 173
    .line 174
    move/from16 v4, v16

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    const/4 v4, 0x0

    .line 178
    :goto_4
    if-eqz v4, :cond_8

    .line 179
    .line 180
    move v12, v7

    .line 181
    :goto_5
    move/from16 v11, v16

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_8
    move v12, v8

    .line 185
    goto :goto_5

    .line 186
    :goto_6
    if-eq v11, v4, :cond_9

    .line 187
    .line 188
    move v11, v7

    .line 189
    goto :goto_7

    .line 190
    :cond_9
    move v11, v8

    .line 191
    :goto_7
    sget-object v13, Lcom/google/android/gms/internal/ads/zzaau;->zzb:[I

    .line 192
    .line 193
    move-object/from16 v17, v13

    .line 194
    .line 195
    const/4 v14, 0x0

    .line 196
    :goto_8
    const/16 v13, 0x9

    .line 197
    .line 198
    if-ge v14, v13, :cond_a

    .line 199
    .line 200
    int-to-float v13, v11

    .line 201
    move/from16 v18, v13

    .line 202
    .line 203
    int-to-float v13, v12

    .line 204
    move/from16 v19, v13

    .line 205
    .line 206
    aget v13, v17, v14

    .line 207
    .line 208
    move/from16 v20, v14

    .line 209
    .line 210
    int-to-float v14, v13

    .line 211
    if-le v13, v12, :cond_a

    .line 212
    .line 213
    div-float v18, v18, v19

    .line 214
    .line 215
    mul-float v14, v14, v18

    .line 216
    .line 217
    float-to-int v14, v14

    .line 218
    if-gt v14, v11, :cond_b

    .line 219
    .line 220
    :cond_a
    const/4 v11, 0x0

    .line 221
    goto :goto_d

    .line 222
    :cond_b
    move/from16 v18, v11

    .line 223
    .line 224
    const/4 v11, 0x1

    .line 225
    if-eq v11, v4, :cond_c

    .line 226
    .line 227
    move/from16 v19, v12

    .line 228
    .line 229
    move v12, v13

    .line 230
    goto :goto_9

    .line 231
    :cond_c
    move/from16 v19, v12

    .line 232
    .line 233
    move v12, v14

    .line 234
    :goto_9
    if-ne v11, v4, :cond_d

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_d
    move v13, v14

    .line 238
    :goto_a
    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zztc;->zza(II)Landroid/graphics/Point;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    iget v12, v2, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    .line 243
    .line 244
    if-eqz v11, :cond_f

    .line 245
    .line 246
    float-to-double v12, v12

    .line 247
    iget v14, v11, Landroid/graphics/Point;->x:I

    .line 248
    .line 249
    move/from16 v21, v4

    .line 250
    .line 251
    iget v4, v11, Landroid/graphics/Point;->y:I

    .line 252
    .line 253
    invoke-virtual {v1, v14, v4, v12, v13}, Lcom/google/android/gms/internal/ads/zztc;->zzg(IID)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_e

    .line 258
    .line 259
    goto :goto_d

    .line 260
    :cond_e
    :goto_b
    const/16 v16, 0x1

    .line 261
    .line 262
    goto :goto_c

    .line 263
    :cond_f
    move/from16 v21, v4

    .line 264
    .line 265
    goto :goto_b

    .line 266
    :goto_c
    add-int/lit8 v14, v20, 0x1

    .line 267
    .line 268
    move/from16 v11, v18

    .line 269
    .line 270
    move/from16 v12, v19

    .line 271
    .line 272
    move/from16 v4, v21

    .line 273
    .line 274
    goto :goto_8

    .line 275
    :goto_d
    if-eqz v11, :cond_10

    .line 276
    .line 277
    iget v4, v11, Landroid/graphics/Point;->x:I

    .line 278
    .line 279
    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    .line 280
    .line 281
    .line 282
    move-result v15

    .line 283
    iget v4, v11, Landroid/graphics/Point;->y:I

    .line 284
    .line 285
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzaau;->zzad(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v11, "Codec max resolution adjusted to: "

    .line 317
    .line 318
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_10
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaat;

    .line 338
    .line 339
    invoke-direct {v4, v15, v9, v6}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(III)V

    .line 340
    .line 341
    .line 342
    :goto_e
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zztc;->zzc:Ljava/lang/String;

    .line 343
    .line 344
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzm:Lcom/google/android/gms/internal/ads/zzaat;

    .line 345
    .line 346
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzh:Z

    .line 347
    .line 348
    new-instance v9, Landroid/media/MediaFormat;

    .line 349
    .line 350
    invoke-direct {v9}, Landroid/media/MediaFormat;-><init>()V

    .line 351
    .line 352
    .line 353
    const-string v10, "mime"

    .line 354
    .line 355
    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const-string v5, "width"

    .line 359
    .line 360
    invoke-virtual {v9, v5, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 361
    .line 362
    .line 363
    const-string v5, "height"

    .line 364
    .line 365
    invoke-virtual {v9, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 366
    .line 367
    .line 368
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 369
    .line 370
    invoke-static {v9, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzb(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 371
    .line 372
    .line 373
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    .line 374
    .line 375
    const/high16 v7, -0x40800000    # -1.0f

    .line 376
    .line 377
    cmpl-float v8, v5, v7

    .line 378
    .line 379
    if-eqz v8, :cond_11

    .line 380
    .line 381
    const-string v8, "frame-rate"

    .line 382
    .line 383
    invoke-virtual {v9, v8, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 384
    .line 385
    .line 386
    :cond_11
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    .line 387
    .line 388
    const-string v8, "rotation-degrees"

    .line 389
    .line 390
    invoke-static {v9, v8, v5}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 391
    .line 392
    .line 393
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    .line 394
    .line 395
    if-eqz v5, :cond_12

    .line 396
    .line 397
    const-string v8, "color-transfer"

    .line 398
    .line 399
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    .line 400
    .line 401
    invoke-static {v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 402
    .line 403
    .line 404
    const-string v8, "color-standard"

    .line 405
    .line 406
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    .line 407
    .line 408
    invoke-static {v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 409
    .line 410
    .line 411
    const-string v8, "color-range"

    .line 412
    .line 413
    iget v10, v5, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    .line 414
    .line 415
    invoke-static {v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzk;->zze:[B

    .line 419
    .line 420
    if-eqz v5, :cond_12

    .line 421
    .line 422
    const-string v8, "hdr-static-info"

    .line 423
    .line 424
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    invoke-virtual {v9, v8, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 429
    .line 430
    .line 431
    :cond_12
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 432
    .line 433
    const-string v8, "video/dolby-vision"

    .line 434
    .line 435
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    if-eqz v5, :cond_13

    .line 440
    .line 441
    sget v5, Lcom/google/android/gms/internal/ads/zztw;->zza:I

    .line 442
    .line 443
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    if-eqz v5, :cond_13

    .line 448
    .line 449
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v5, Ljava/lang/Integer;

    .line 452
    .line 453
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    const-string v8, "profile"

    .line 458
    .line 459
    invoke-static {v9, v8, v5}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 460
    .line 461
    .line 462
    :cond_13
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaat;->zza:I

    .line 463
    .line 464
    const-string v8, "max-width"

    .line 465
    .line 466
    invoke-virtual {v9, v8, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 467
    .line 468
    .line 469
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaat;->zzb:I

    .line 470
    .line 471
    const-string v8, "max-height"

    .line 472
    .line 473
    invoke-virtual {v9, v8, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 474
    .line 475
    .line 476
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzaat;->zzc:I

    .line 477
    .line 478
    const-string v5, "max-input-size"

    .line 479
    .line 480
    invoke-static {v9, v5, v4}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    const-string v4, "priority"

    .line 484
    .line 485
    const/4 v5, 0x0

    .line 486
    invoke-virtual {v9, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 487
    .line 488
    .line 489
    cmpl-float v4, v3, v7

    .line 490
    .line 491
    if-eqz v4, :cond_14

    .line 492
    .line 493
    const-string v4, "operating-rate"

    .line 494
    .line 495
    invoke-virtual {v9, v4, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 496
    .line 497
    .line 498
    :cond_14
    if-eqz v6, :cond_15

    .line 499
    .line 500
    const-string v3, "no-post-process"

    .line 501
    .line 502
    const/4 v11, 0x1

    .line 503
    invoke-virtual {v9, v3, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 504
    .line 505
    .line 506
    const-string v3, "auto-frc"

    .line 507
    .line 508
    invoke-virtual {v9, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 509
    .line 510
    .line 511
    :cond_15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 512
    .line 513
    const/16 v4, 0x23

    .line 514
    .line 515
    if-lt v3, v4, :cond_16

    .line 516
    .line 517
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzI:I

    .line 518
    .line 519
    neg-int v3, v3

    .line 520
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    const-string v4, "importance"

    .line 525
    .line 526
    invoke-virtual {v9, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 527
    .line 528
    .line 529
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaau;->zzaY(Lcom/google/android/gms/internal/ads/zztc;)Landroid/view/Surface;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 534
    .line 535
    if-eqz v4, :cond_17

    .line 536
    .line 537
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaau;->zze:Landroid/content/Context;

    .line 538
    .line 539
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzL(Landroid/content/Context;)Z

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    if-nez v4, :cond_17

    .line 544
    .line 545
    const-string v4, "allow-frame-drop"

    .line 546
    .line 547
    const/4 v5, 0x0

    .line 548
    invoke-virtual {v9, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 549
    .line 550
    .line 551
    :cond_17
    const/4 v4, 0x0

    .line 552
    invoke-static {v1, v9, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzsw;->zzb(Lcom/google/android/gms/internal/ads/zztc;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzsw;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    return-object v1
.end method

.method public final zzag(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaau;->zze:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p3, p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzaau;->zzaZ(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zztw;->zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzz;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final zzaj(Lcom/google/android/gms/internal/ads/zzhp;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzo:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x7

    .line 16
    if-lt v0, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    .line 41
    .line 42
    const/16 v6, -0x4b

    .line 43
    .line 44
    if-ne v0, v6, :cond_2

    .line 45
    .line 46
    const/16 v0, 0x3c

    .line 47
    .line 48
    if-ne v1, v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-ne v2, v0, :cond_2

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    if-ne v3, v1, :cond_2

    .line 55
    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    if-ne v4, v0, :cond_2

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    new-array v0, v0, [B

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaz()Lcom/google/android/gms/internal/ads/zzsz;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v1, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "hdr10-plus-info"

    .line 85
    .line 86
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzq(Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_0
    return-void
.end method

.method public final zzak(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecVideoRenderer"

    .line 2
    .line 3
    const-string v1, "Video codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacb;->zzs(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsw;JJ)V
    .locals 0

    .line 1
    move-object p2, p1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 3
    .line 4
    invoke-virtual/range {p1 .. p6}, Lcom/google/android/gms/internal/ads/zzacb;->zzk(Ljava/lang/String;JJ)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaau;->zzaW(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzn:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaB()Lcom/google/android/gms/internal/ads/zztc;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 p3, 0x1d

    .line 23
    .line 24
    const/4 p4, 0x0

    .line 25
    if-lt p2, p3, :cond_1

    .line 26
    .line 27
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zztc;->zzb:Ljava/lang/String;

    .line 28
    .line 29
    const-string p3, "video/x-vnd.on2.vp9"

    .line 30
    .line 31
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zztc;->zzh()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    array-length p2, p1

    .line 42
    move p3, p4

    .line 43
    :goto_0
    if-ge p3, p2, :cond_1

    .line 44
    .line 45
    aget-object p5, p1, p3

    .line 46
    .line 47
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 48
    .line 49
    const/16 p6, 0x4000

    .line 50
    .line 51
    if-ne p5, p6, :cond_0

    .line 52
    .line 53
    const/4 p4, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzo:Z

    .line 59
    .line 60
    return-void
.end method

.method public final zzam(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacb;->zzl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzan(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V
    .locals 18
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztj;->zzaz()Lcom/google/android/gms/internal/ads/zzsz;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzx:I

    .line 14
    .line 15
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzsz;->zzr(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v3, "crop-right"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const-string v5, "crop-top"

    .line 28
    .line 29
    const-string v6, "crop-bottom"

    .line 30
    .line 31
    const-string v7, "crop-left"

    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    const/4 v9, 0x0

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    move v4, v8

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v4, v9

    .line 58
    :goto_0
    if-eqz v4, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    sub-int/2addr v3, v7

    .line 69
    add-int/2addr v3, v8

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const-string v3, "width"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    :goto_1
    if-eqz v4, :cond_3

    .line 78
    .line 79
    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    sub-int/2addr v4, v2

    .line 88
    add-int/2addr v4, v8

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const-string v4, "height"

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    :goto_2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzz:F

    .line 97
    .line 98
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    .line 99
    .line 100
    const/16 v6, 0x5a

    .line 101
    .line 102
    if-eq v5, v6, :cond_4

    .line 103
    .line 104
    const/16 v6, 0x10e

    .line 105
    .line 106
    if-ne v5, v6, :cond_5

    .line 107
    .line 108
    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    .line 109
    .line 110
    div-float v2, v5, v2

    .line 111
    .line 112
    move/from16 v17, v4

    .line 113
    .line 114
    move v4, v3

    .line 115
    move/from16 v3, v17

    .line 116
    .line 117
    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcd;

    .line 118
    .line 119
    invoke-direct {v5, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzcd;-><init>(IIF)V

    .line 120
    .line 121
    .line 122
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    .line 123
    .line 124
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 125
    .line 126
    if-eqz v10, :cond_7

    .line 127
    .line 128
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzN:Z

    .line 129
    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(F)Lcom/google/android/gms/internal/ads/zzx;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzr:I

    .line 150
    .line 151
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzs:Ljava/util/List;

    .line 152
    .line 153
    if-nez v1, :cond_6

    .line 154
    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :cond_6
    move-object/from16 v16, v1

    .line 160
    .line 161
    const/4 v11, 0x1

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztj;->zzav()J

    .line 163
    .line 164
    .line 165
    move-result-wide v13

    .line 166
    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzach;->zzl(ILcom/google/android/gms/internal/ads/zzz;JILjava/util/List;)V

    .line 167
    .line 168
    .line 169
    const/4 v1, 0x2

    .line 170
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzr:I

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 174
    .line 175
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    .line 176
    .line 177
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzj(F)V

    .line 178
    .line 179
    .line 180
    :goto_3
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzN:Z

    .line 181
    .line 182
    return-void
.end method

.method public final zzao(Lcom/google/android/gms/internal/ads/zzsz;IJJ)V
    .locals 0

    .line 1
    const-string p3, "releaseOutputBuffer"

    .line 2
    .line 3
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzsz;->zzn(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 13
    .line 14
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzia;->zze:I

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    iput p2, p1, Lcom/google/android/gms/internal/ads/zzia;->zze:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzB:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzG:Lcom/google/android/gms/internal/ads/zzcd;

    .line 28
    .line 29
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzH:Lcom/google/android/gms/internal/ads/zzcd;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_0

    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzH:Lcom/google/android/gms/internal/ads/zzcd;

    .line 46
    .line 47
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzacb;->zzt(Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzn()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzbc()V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public final zzap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzw()V

    .line 6
    .line 7
    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzL:J

    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzav()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzL:J

    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 26
    .line 27
    neg-long v0, v0

    .line 28
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzp(J)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzf(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzN:Z

    .line 40
    .line 41
    return-void
.end method

.method public final zzaq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzw()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzar(JJLcom/google/android/gms/internal/ads/zzsz;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z
    .locals 20
    .param p5    # Lcom/google/android/gms/internal/ads/zzsz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    move/from16 v2, p7

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztj;->zzau()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    sub-long v3, p10, v3

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    move v6, v5

    .line 18
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzl:Ljava/util/PriorityQueue;

    .line 19
    .line 20
    invoke-virtual {v7}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    check-cast v8, Ljava/lang/Long;

    .line 25
    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    cmp-long v8, v8, p10

    .line 33
    .line 34
    if-gez v8, :cond_0

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzaau;->zzaS(II)V

    .line 43
    .line 44
    .line 45
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 46
    .line 47
    const/4 v7, 0x1

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    if-eqz p12, :cond_1

    .line 51
    .line 52
    if-nez p13, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaau;->zzaR(Lcom/google/android/gms/internal/ads/zzsz;IJ)V

    .line 55
    .line 56
    .line 57
    return v7

    .line 58
    :cond_1
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzL:J

    .line 59
    .line 60
    neg-long v7, v7

    .line 61
    add-long v7, p10, v7

    .line 62
    .line 63
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaaq;

    .line 64
    .line 65
    move-object/from16 p9, v0

    .line 66
    .line 67
    move-object/from16 p10, v1

    .line 68
    .line 69
    move/from16 p11, v2

    .line 70
    .line 71
    move-wide/from16 p12, v3

    .line 72
    .line 73
    move-object/from16 p8, v5

    .line 74
    .line 75
    invoke-direct/range {p8 .. p13}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>(Lcom/google/android/gms/internal/ads/zzaau;Lcom/google/android/gms/internal/ads/zzsz;IJ)V

    .line 76
    .line 77
    .line 78
    move-object/from16 v1, p8

    .line 79
    .line 80
    invoke-interface {v6, v7, v8, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzz(JLcom/google/android/gms/internal/ads/zzacf;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    return v1

    .line 85
    :cond_2
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztj;->zzav()J

    .line 88
    .line 89
    .line 90
    move-result-wide v15

    .line 91
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzj:Lcom/google/android/gms/internal/ads/zzabj;

    .line 92
    .line 93
    move-wide/from16 v11, p1

    .line 94
    .line 95
    move-wide/from16 v13, p3

    .line 96
    .line 97
    move-wide/from16 v9, p10

    .line 98
    .line 99
    move/from16 v17, p12

    .line 100
    .line 101
    move/from16 v18, p13

    .line 102
    .line 103
    move-object/from16 v19, v6

    .line 104
    .line 105
    invoke-virtual/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzabl;->zza(JJJJZZLcom/google/android/gms/internal/ads/zzabj;)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_7

    .line 110
    .line 111
    if-eq v6, v7, :cond_5

    .line 112
    .line 113
    const/4 v8, 0x2

    .line 114
    if-eq v6, v8, :cond_4

    .line 115
    .line 116
    const/4 v8, 0x3

    .line 117
    if-eq v6, v8, :cond_3

    .line 118
    .line 119
    return v5

    .line 120
    :cond_3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaau;->zzaR(Lcom/google/android/gms/internal/ads/zzsz;IJ)V

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzabj;->zzc()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaau;->zzaT(J)V

    .line 128
    .line 129
    .line 130
    return v7

    .line 131
    :cond_4
    const-string v3, "dropVideoBuffer"

    .line 132
    .line 133
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzsz;->zzo(IZ)V

    .line 137
    .line 138
    .line 139
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v5, v7}, Lcom/google/android/gms/internal/ads/zzaau;->zzaS(II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzabj;->zzc()J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaau;->zzaT(J)V

    .line 150
    .line 151
    .line 152
    return v7

    .line 153
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzabj;->zzd()J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzabj;->zzc()J

    .line 158
    .line 159
    .line 160
    move-result-wide v8

    .line 161
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzF:J

    .line 162
    .line 163
    cmp-long v10, v5, v10

    .line 164
    .line 165
    if-nez v10, :cond_6

    .line 166
    .line 167
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaau;->zzaR(Lcom/google/android/gms/internal/ads/zzsz;IJ)V

    .line 168
    .line 169
    .line 170
    move-wide v1, v5

    .line 171
    goto :goto_1

    .line 172
    :cond_6
    move-object/from16 p13, p14

    .line 173
    .line 174
    move-object/from16 p8, v0

    .line 175
    .line 176
    move-wide/from16 p9, v3

    .line 177
    .line 178
    move-wide/from16 p11, v5

    .line 179
    .line 180
    invoke-direct/range {p8 .. p13}, Lcom/google/android/gms/internal/ads/zzaau;->zzbb(JJLcom/google/android/gms/internal/ads/zzz;)V

    .line 181
    .line 182
    .line 183
    move-wide/from16 p13, p11

    .line 184
    .line 185
    move-wide/from16 p11, p9

    .line 186
    .line 187
    move-object/from16 p9, v1

    .line 188
    .line 189
    move/from16 p10, v2

    .line 190
    .line 191
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzaau;->zzao(Lcom/google/android/gms/internal/ads/zzsz;IJJ)V

    .line 192
    .line 193
    .line 194
    move-wide/from16 v1, p13

    .line 195
    .line 196
    :goto_1
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzaau;->zzaT(J)V

    .line 197
    .line 198
    .line 199
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaau;->zzF:J

    .line 200
    .line 201
    return v7

    .line 202
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhz;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdg;->zzc()J

    .line 207
    .line 208
    .line 209
    move-result-wide v1

    .line 210
    move-object/from16 p13, p14

    .line 211
    .line 212
    move-object/from16 p8, v0

    .line 213
    .line 214
    move-wide/from16 p11, v1

    .line 215
    .line 216
    move-wide/from16 p9, v3

    .line 217
    .line 218
    invoke-direct/range {p8 .. p13}, Lcom/google/android/gms/internal/ads/zzaau;->zzbb(JJLcom/google/android/gms/internal/ads/zzz;)V

    .line 219
    .line 220
    .line 221
    move-wide/from16 p13, p11

    .line 222
    .line 223
    move-wide/from16 p11, p9

    .line 224
    .line 225
    move-object/from16 p9, p5

    .line 226
    .line 227
    move/from16 p10, p7

    .line 228
    .line 229
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzaau;->zzao(Lcom/google/android/gms/internal/ads/zzsz;IJJ)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzabj;->zzc()J

    .line 233
    .line 234
    .line 235
    move-result-wide v1

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaau;->zzaT(J)V

    .line 237
    .line 238
    .line 239
    return v7
.end method

.method public final zzt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzr:I

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzh()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzr:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzb()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final zzu(ILjava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_b

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    if-eq p1, v1, :cond_9

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq p1, v1, :cond_8

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq p1, v1, :cond_7

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq p1, v1, :cond_5

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-eq p1, v1, :cond_3

    .line 20
    .line 21
    const/16 v1, 0xe

    .line 22
    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    if-eq p1, v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x11

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztj;->zzu(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaau;->zzbe(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    check-cast p2, Lcom/google/android/gms/internal/ads/zzaau;

    .line 47
    .line 48
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzhz;->zzu(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast p2, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzI:I

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaz()Lcom/google/android/gms/internal/ads/zzsz;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_a

    .line 68
    .line 69
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v0, 0x23

    .line 72
    .line 73
    if-lt p2, v0, :cond_a

    .line 74
    .line 75
    new-instance p2, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzI:I

    .line 81
    .line 82
    neg-int v0, v0

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const-string v1, "importance"

    .line 89
    .line 90
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zzq(Landroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    check-cast p2, Lcom/google/android/gms/internal/ads/zzel;

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzel;->zzb()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_a

    .line 107
    .line 108
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_a

    .line 113
    .line 114
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzv:Lcom/google/android/gms/internal/ads/zzel;

    .line 115
    .line 116
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 117
    .line 118
    if-eqz p1, :cond_a

    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzach;->zzs(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzel;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    check-cast p2, Ljava/util/List;

    .line 133
    .line 134
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbz;->zza:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 143
    .line 144
    if-eqz p1, :cond_a

    .line 145
    .line 146
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzach;->zzC()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_a

    .line 151
    .line 152
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzach;->zzm()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzs:Ljava/util/List;

    .line 157
    .line 158
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 159
    .line 160
    if-eqz p1, :cond_a

    .line 161
    .line 162
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzach;->zzu(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    check-cast p2, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzy:I

    .line 176
    .line 177
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 178
    .line 179
    if-eqz p2, :cond_6

    .line 180
    .line 181
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzq(I)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 186
    .line 187
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzh(I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    check-cast p2, Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzx:I

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaz()Lcom/google/android/gms/internal/ads/zzsz;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    if-eqz p2, :cond_a

    .line 207
    .line 208
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzsz;->zzr(I)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    check-cast p2, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzJ:I

    .line 222
    .line 223
    if-eq p2, p1, :cond_a

    .line 224
    .line 225
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzJ:I

    .line 226
    .line 227
    return-void

    .line 228
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    check-cast p2, Lcom/google/android/gms/internal/ads/zzabi;

    .line 232
    .line 233
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzK:Lcom/google/android/gms/internal/ads/zzabi;

    .line 234
    .line 235
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 236
    .line 237
    if-eqz p1, :cond_a

    .line 238
    .line 239
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzach;->zzv(Lcom/google/android/gms/internal/ads/zzabi;)V

    .line 240
    .line 241
    .line 242
    :cond_a
    return-void

    .line 243
    :cond_b
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaau;->zzbe(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public final zzx()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzH:Lcom/google/android/gms/internal/ads/zzcd;

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzM:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzw:Z

    .line 13
    .line 14
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzx()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzacb;->zzm(Lcom/google/android/gms/internal/ads/zzia;)V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzacb;->zzt(Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzacb;->zzm(Lcom/google/android/gms/internal/ads/zzia;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzacb;->zzt(Lcom/google/android/gms/internal/ads/zzcd;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final zzy(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztj;->zzy(ZZ)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzn()Lcom/google/android/gms/internal/ads/zzlz;

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzg:Lcom/google/android/gms/internal/ads/zzacb;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzacb;->zzo(Lcom/google/android/gms/internal/ads/zzia;)V

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzq:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzs:Ljava/util/List;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zze:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 30
    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaba;

    .line 32
    .line 33
    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzaba;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzabl;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaba;->zzf(Z)Lcom/google/android/gms/internal/ads/zzaba;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzaba;->zze(Lcom/google/android/gms/internal/ads/zzdg;)Lcom/google/android/gms/internal/ads/zzaba;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaba;->zzg()Lcom/google/android/gms/internal/ads/zzabh;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzabh;->zzu(I)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzabh;->zze(I)Lcom/google/android/gms/internal/ads/zzach;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 59
    .line 60
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzq:Z

    .line 61
    .line 62
    :cond_1
    xor-int/lit8 p1, p2, 0x1

    .line 63
    .line 64
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 65
    .line 66
    if-eqz p2, :cond_5

    .line 67
    .line 68
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaap;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(Lcom/google/android/gms/internal/ads/zzaau;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdq;->zzc()Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzr(Lcom/google/android/gms/internal/ads/zzace;Ljava/util/concurrent/Executor;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzK:Lcom/google/android/gms/internal/ads/zzabi;

    .line 81
    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 85
    .line 86
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzach;->zzv(Lcom/google/android/gms/internal/ads/zzabi;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 90
    .line 91
    if-eqz p2, :cond_3

    .line 92
    .line 93
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzv:Lcom/google/android/gms/internal/ads/zzel;

    .line 94
    .line 95
    sget-object v0, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzel;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_3

    .line 102
    .line 103
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzt:Landroid/view/Surface;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzv:Lcom/google/android/gms/internal/ads/zzel;

    .line 108
    .line 109
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzs(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzel;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 113
    .line 114
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzy:I

    .line 115
    .line 116
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzach;->zzq(I)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzat()F

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzach;->zzt(F)V

    .line 126
    .line 127
    .line 128
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzs:Ljava/util/List;

    .line 129
    .line 130
    if-eqz p2, :cond_4

    .line 131
    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 133
    .line 134
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzach;->zzu(Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzr:I

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaC()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzi(Lcom/google/android/gms/internal/ads/zzdg;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzf(I)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final zzz(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzj(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztj;->zzz(JZ)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzg()V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    if-eqz p3, :cond_3

    .line 25
    .line 26
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzp:Lcom/google/android/gms/internal/ads/zzach;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzach;->zzk(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzi:Lcom/google/android/gms/internal/ads/zzabl;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzc(Z)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzB:I

    .line 40
    .line 41
    return-void
.end method
