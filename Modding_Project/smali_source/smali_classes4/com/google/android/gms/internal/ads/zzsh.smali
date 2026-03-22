.class public final Lcom/google/android/gms/internal/ads/zzsh;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfvu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfvu;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsf;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzsf;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzsg;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzsg;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsh;->zza:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsh;->zzb:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic zza(I)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzsj;->zzd(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static synthetic zzb(I)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzsj;->zze(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzsw;)Lcom/google/android/gms/internal/ads/zzsj;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsw;->zza:Lcom/google/android/gms/internal/ads/zztc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v4, "createCodec:"

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 27
    .line 28
    .line 29
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 30
    :try_start_1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzsn;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsh;->zzb:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 33
    .line 34
    check-cast v1, Lcom/google/android/gms/internal/ads/zzsg;

    .line 35
    .line 36
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzsg;->zza:I

    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsh;->zzb(I)Landroid/os/HandlerThread;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v7, v5, v1}, Lcom/google/android/gms/internal/ads/zzsn;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    .line 43
    .line 44
    .line 45
    new-instance v4, Lcom/google/android/gms/internal/ads/zzsj;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsh;->zza:Lcom/google/android/gms/internal/ads/zzfvu;

    .line 48
    .line 49
    check-cast v1, Lcom/google/android/gms/internal/ads/zzsf;

    .line 50
    .line 51
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzsf;->zza:I

    .line 52
    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsh;->zza(I)Landroid/os/HandlerThread;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzsw;->zzf:Lcom/google/android/gms/internal/ads/zzsv;

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzsv;Lcom/google/android/gms/internal/ads/zzsi;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    .line 62
    .line 63
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzsw;->zzd:Landroid/view/Surface;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zztc;->zzh:Z

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v6, 0x23

    .line 78
    .line 79
    if-lt v0, v6, :cond_0

    .line 80
    .line 81
    const/16 v3, 0x8

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    move-object p1, v0

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsw;->zzb:Landroid/media/MediaFormat;

    .line 88
    .line 89
    invoke-static {v4, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsj;->zzh(Lcom/google/android/gms/internal/ads/zzsj;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    .line 91
    .line 92
    return-object v4

    .line 93
    :goto_1
    move-object v2, v4

    .line 94
    goto :goto_2

    .line 95
    :catch_1
    move-exception v0

    .line 96
    move-object p1, v0

    .line 97
    goto :goto_2

    .line 98
    :catch_2
    move-exception v0

    .line 99
    move-object p1, v0

    .line 100
    move-object v5, v2

    .line 101
    :goto_2
    if-nez v2, :cond_1

    .line 102
    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsj;->zzm()V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_3
    throw p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzsw;)Lcom/google/android/gms/internal/ads/zzsz;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method
