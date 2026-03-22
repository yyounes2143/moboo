.class public final Lcom/google/android/gms/internal/ads/zzro;
.super Lcom/google/android/gms/internal/ads/zztj;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkw;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzqa;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzqi;

.field private final zze:Lcom/google/android/gms/internal/ads/zzsv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:I

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/ads/zzz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:J

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsx;Lcom/google/android/gms/internal/ads/zztl;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqb;Lcom/google/android/gms/internal/ads/zzqi;)V
    .locals 8
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzqb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x23

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-lt p4, v0, :cond_0

    .line 7
    .line 8
    new-instance p4, Lcom/google/android/gms/internal/ads/zzsv;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsu;->zza:Lcom/google/android/gms/internal/ads/zzsu;

    .line 11
    .line 12
    invoke-direct {p4, v0}, Lcom/google/android/gms/internal/ads/zzsv;-><init>(Lcom/google/android/gms/internal/ads/zzsu;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object p4, v1

    .line 17
    :goto_0
    const/4 v6, 0x0

    .line 18
    const v7, 0x472c4400    # 44100.0f

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    move-object v2, p0

    .line 23
    move-object v4, p2

    .line 24
    move-object v5, p3

    .line 25
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zztj;-><init>(ILcom/google/android/gms/internal/ads/zzsx;Lcom/google/android/gms/internal/ads/zztl;ZF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/zzro;->zzb:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p7, v2, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 35
    .line 36
    iput-object p4, v2, Lcom/google/android/gms/internal/ads/zzro;->zze:Lcom/google/android/gms/internal/ads/zzsv;

    .line 37
    .line 38
    const/16 p1, -0x3e8

    .line 39
    .line 40
    iput p1, v2, Lcom/google/android/gms/internal/ads/zzro;->zzo:I

    .line 41
    .line 42
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqa;

    .line 43
    .line 44
    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzqb;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 48
    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    .line 50
    .line 51
    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Lcom/google/android/gms/internal/ads/zzro;Lcom/google/android/gms/internal/ads/zzrn;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p7, p1}, Lcom/google/android/gms/internal/ads/zzqi;->zzq(Lcom/google/android/gms/internal/ads/zzqf;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private final zzaR(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 1

    .line 1
    const-string v0, "OMX.google.raw.decoder"

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x17

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzb:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzN(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzp:I

    .line 32
    .line 33
    return p1
.end method

.method private static zzaS(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZLcom/google/android/gms/internal/ads/zzqi;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    if-nez p2, :cond_0

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
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzqi;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztw;->zza()Lcom/google/android/gms/internal/ads/zztc;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    invoke-static {p0, p1, p2, p2}, Lcom/google/android/gms/internal/ads/zztw;->zze(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZZ)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private final zzaT()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzW()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqi;->zzb(Z)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/high16 v2, -0x8000000000000000L

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzl:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzk:J

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzk:J

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzl:Z

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public static synthetic zzad(Lcom/google/android/gms/internal/ads/zzro;)Lcom/google/android/gms/internal/ads/zzlu;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzay()Lcom/google/android/gms/internal/ads/zzlu;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic zzae(Lcom/google/android/gms/internal/ads/zzro;)Lcom/google/android/gms/internal/ads/zzqa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzah(Lcom/google/android/gms/internal/ads/zzro;Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzn:Z

    .line 3
    .line 4
    return-void
.end method

.method public static synthetic zzai(Lcom/google/android/gms/internal/ads/zzro;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzB()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zzA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzk()V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x23

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zze:Lcom/google/android/gms/internal/ads/zzsv;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzb()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final zzC()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzn:Z

    .line 3
    .line 4
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzm:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzm:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzl()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzm:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzm:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzl()V

    .line 30
    .line 31
    .line 32
    :goto_0
    throw v1
.end method

.method public final zzD()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzi()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzE()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzro;->zzaT()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzh()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzU()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzW()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzW()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzz()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final zzX()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzX()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public final zzZ(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, -0x1

    .line 3
    move v1, v0

    .line 4
    :goto_0
    array-length v2, p3

    .line 5
    if-ge p2, v2, :cond_1

    .line 6
    .line 7
    aget-object v2, p3, p2

    .line 8
    .line 9
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 10
    .line 11
    if-eq v2, v0, :cond_0

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v1, v0, :cond_2

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    return p1

    .line 25
    :cond_2
    int-to-float p2, v1

    .line 26
    mul-float/2addr p2, p1

    .line 27
    return p2
.end method

.method public final zza()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzcU()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzro;->zzaT()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzk:J

    .line 12
    .line 13
    return-wide v0
.end method

.method public final zzaa(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzay;->zzh(Ljava/lang/String;)Z

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
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzL:I

    .line 13
    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zztj;->zzaQ(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztw;->zza()Lcom/google/android/gms/internal/ads/zztc;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v7, v4

    .line 32
    goto :goto_3

    .line 33
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 34
    .line 35
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzd(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzpn;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzpn;->zzb:Z

    .line 40
    .line 41
    if-nez v7, :cond_3

    .line 42
    .line 43
    move v7, v4

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzpn;->zzc:Z

    .line 46
    .line 47
    if-eq v5, v7, :cond_4

    .line 48
    .line 49
    const/16 v7, 0x200

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const/16 v7, 0x600

    .line 53
    .line 54
    :goto_1
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzpn;->zzd:Z

    .line 55
    .line 56
    if-eqz v6, :cond_5

    .line 57
    .line 58
    or-int/lit16 v7, v7, 0x800

    .line 59
    .line 60
    :cond_5
    :goto_2
    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_6

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_6
    or-int/lit16 p1, v7, 0xac

    .line 68
    .line 69
    return p1

    .line 70
    :goto_3
    const-string v1, "audio/raw"

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 79
    .line 80
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_7

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 88
    .line 89
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 90
    .line 91
    iget v6, p2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 92
    .line 93
    const/4 v8, 0x2

    .line 94
    invoke-static {v8, v1, v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzA(III)Lcom/google/android/gms/internal/ads/zzz;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqi;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-nez v1, :cond_8

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_8
    invoke-static {p1, p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzro;->zzaS(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZLcom/google/android/gms/internal/ads/zzqi;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_9

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_9
    if-nez v3, :cond_a

    .line 117
    .line 118
    move v5, v8

    .line 119
    :goto_4
    or-int/lit16 p1, v5, 0x80

    .line 120
    .line 121
    return p1

    .line 122
    :cond_a
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/google/android/gms/internal/ads/zztc;

    .line 127
    .line 128
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zztc;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_c

    .line 133
    .line 134
    move v3, v5

    .line 135
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-ge v3, v6, :cond_c

    .line 140
    .line 141
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    check-cast v6, Lcom/google/android/gms/internal/ads/zztc;

    .line 146
    .line 147
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/zztc;->zze(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_b

    .line 152
    .line 153
    move p1, v4

    .line 154
    move v1, v5

    .line 155
    move-object v0, v6

    .line 156
    goto :goto_6

    .line 157
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_c
    move p1, v5

    .line 161
    :goto_6
    if-eq v5, v1, :cond_d

    .line 162
    .line 163
    const/4 v3, 0x3

    .line 164
    goto :goto_7

    .line 165
    :cond_d
    const/4 v3, 0x4

    .line 166
    :goto_7
    const/16 v6, 0x8

    .line 167
    .line 168
    if-eqz v1, :cond_e

    .line 169
    .line 170
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zztc;->zzf(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_e

    .line 175
    .line 176
    const/16 v6, 0x10

    .line 177
    .line 178
    :cond_e
    iget-boolean p2, v0, Lcom/google/android/gms/internal/ads/zztc;->zzg:Z

    .line 179
    .line 180
    if-eq v5, p2, :cond_f

    .line 181
    .line 182
    move p2, v4

    .line 183
    goto :goto_8

    .line 184
    :cond_f
    const/16 p2, 0x40

    .line 185
    .line 186
    :goto_8
    if-eq v5, p1, :cond_10

    .line 187
    .line 188
    move v2, v4

    .line 189
    :cond_10
    or-int p1, v3, v6

    .line 190
    .line 191
    or-int/lit8 p1, p1, 0x20

    .line 192
    .line 193
    or-int/2addr p1, p2

    .line 194
    or-int/2addr p1, v2

    .line 195
    or-int/2addr p1, v7

    .line 196
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
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zztj;->zzaM(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const v2, 0x8000

    .line 14
    .line 15
    .line 16
    or-int/2addr v1, v2

    .line 17
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzro;->zzaR(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzro;->zzf:I

    .line 22
    .line 23
    if-le v2, v3, :cond_1

    .line 24
    .line 25
    or-int/lit8 v1, v1, 0x40

    .line 26
    .line 27
    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Lcom/google/android/gms/internal/ads/zzib;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    move v6, p1

    .line 35
    move v7, v1

    .line 36
    :goto_0
    move-object v4, p2

    .line 37
    move-object v5, p3

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzib;->zzd:I

    .line 40
    .line 41
    move v7, p1

    .line 42
    move v6, v0

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzib;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    .line 45
    .line 46
    .line 47
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
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzi:Lcom/google/android/gms/internal/ads/zzz;

    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zztj;->zzac(Lcom/google/android/gms/internal/ads/zzkq;)Lcom/google/android/gms/internal/ads/zzib;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 13
    .line 14
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzu(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzib;)V

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public final zzaf(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsw;
    .locals 9
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzT()[Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    array-length v0, p3

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzro;->zzaR(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v4, v2

    .line 16
    :goto_0
    if-ge v4, v0, :cond_2

    .line 17
    .line 18
    aget-object v5, p3, v4

    .line 19
    .line 20
    invoke-virtual {p1, p2, v5}, Lcom/google/android/gms/internal/ads/zztc;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzib;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzib;->zzd:I

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzro;->zzaR(Lcom/google/android/gms/internal/ads/zztc;Lcom/google/android/gms/internal/ads/zzz;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzf:I

    .line 40
    .line 41
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 42
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v1, 0x18

    .line 46
    .line 47
    if-ge v0, v1, :cond_4

    .line 48
    .line 49
    const-string v4, "OMX.SEC.aac.dec"

    .line 50
    .line 51
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    const-string v4, "samsung"

    .line 58
    .line 59
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 68
    .line 69
    const-string v5, "zeroflte"

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    const-string v5, "herolte"

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_3

    .line 84
    .line 85
    const-string v5, "heroqlte"

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    :cond_3
    move v4, v3

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move v4, v2

    .line 96
    :goto_2
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzro;->zzg:Z

    .line 97
    .line 98
    const-string v4, "OMX.google.opus.decoder"

    .line 99
    .line 100
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_5

    .line 105
    .line 106
    const-string v4, "c2.android.opus.decoder"

    .line 107
    .line 108
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_5

    .line 113
    .line 114
    const-string v4, "OMX.google.vorbis.decoder"

    .line 115
    .line 116
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_5

    .line 121
    .line 122
    const-string v4, "c2.android.vorbis.decoder"

    .line 123
    .line 124
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    if-eqz p3, :cond_6

    .line 129
    .line 130
    :cond_5
    move p3, v3

    .line 131
    goto :goto_3

    .line 132
    :cond_6
    move p3, v2

    .line 133
    :goto_3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzro;->zzh:Z

    .line 134
    .line 135
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zztc;->zzc:Ljava/lang/String;

    .line 136
    .line 137
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzro;->zzf:I

    .line 138
    .line 139
    new-instance v5, Landroid/media/MediaFormat;

    .line 140
    .line 141
    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v6, "mime"

    .line 145
    .line 146
    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 150
    .line 151
    const-string v6, "channel-count"

    .line 152
    .line 153
    invoke-virtual {v5, v6, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    iget v6, p2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 157
    .line 158
    const-string v7, "sample-rate"

    .line 159
    .line 160
    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    iget-object v7, p2, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 164
    .line 165
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzb(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    const-string v7, "max-input-size"

    .line 169
    .line 170
    invoke-static {v5, v7, v4}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    const-string v4, "priority"

    .line 174
    .line 175
    invoke-virtual {v5, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    const/high16 v4, -0x40800000    # -1.0f

    .line 179
    .line 180
    cmpl-float v4, p4, v4

    .line 181
    .line 182
    if-eqz v4, :cond_8

    .line 183
    .line 184
    const/16 v4, 0x17

    .line 185
    .line 186
    if-ne v0, v4, :cond_7

    .line 187
    .line 188
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 189
    .line 190
    const-string v7, "ZTE B2017G"

    .line 191
    .line 192
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-nez v7, :cond_8

    .line 197
    .line 198
    const-string v7, "AXON 7 mini"

    .line 199
    .line 200
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-nez v4, :cond_8

    .line 205
    .line 206
    :cond_7
    const-string v4, "operating-rate"

    .line 207
    .line 208
    invoke-virtual {v5, v4, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 209
    .line 210
    .line 211
    :cond_8
    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 212
    .line 213
    const-string v4, "audio/ac4"

    .line 214
    .line 215
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_a

    .line 220
    .line 221
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdh;->zza(Lcom/google/android/gms/internal/ads/zzz;)Landroid/util/Pair;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    if-eqz v4, :cond_9

    .line 226
    .line 227
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast v7, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    const-string v8, "profile"

    .line 236
    .line 237
    invoke-static {v5, v8, v7}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v4, Ljava/lang/Integer;

    .line 243
    .line 244
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    const-string v7, "level"

    .line 249
    .line 250
    invoke-static {v5, v7, v4}, Lcom/google/android/gms/internal/ads/zzea;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    :cond_9
    const/16 v4, 0x1c

    .line 254
    .line 255
    if-gt v0, v4, :cond_a

    .line 256
    .line 257
    const-string v4, "ac4-is-sync"

    .line 258
    .line 259
    invoke-virtual {v5, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    :cond_a
    if-lt v0, v1, :cond_b

    .line 263
    .line 264
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 265
    .line 266
    const/4 v3, 0x4

    .line 267
    invoke-static {v3, p3, v6}, Lcom/google/android/gms/internal/ads/zzeu;->zzA(III)Lcom/google/android/gms/internal/ads/zzz;

    .line 268
    .line 269
    .line 270
    move-result-object p3

    .line 271
    invoke-interface {v1, p3}, Lcom/google/android/gms/internal/ads/zzqi;->zza(Lcom/google/android/gms/internal/ads/zzz;)I

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    const/4 v1, 0x2

    .line 276
    if-ne p3, v1, :cond_b

    .line 277
    .line 278
    const-string p3, "pcm-encoding"

    .line 279
    .line 280
    invoke-virtual {v5, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    :cond_b
    const/16 p3, 0x20

    .line 284
    .line 285
    if-lt v0, p3, :cond_c

    .line 286
    .line 287
    const-string p3, "max-output-channel-count"

    .line 288
    .line 289
    const/16 v1, 0x63

    .line 290
    .line 291
    invoke-virtual {v5, p3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    :cond_c
    const/16 p3, 0x23

    .line 295
    .line 296
    if-lt v0, p3, :cond_d

    .line 297
    .line 298
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzro;->zzo:I

    .line 299
    .line 300
    neg-int p3, p3

    .line 301
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    .line 302
    .line 303
    .line 304
    move-result p3

    .line 305
    const-string v0, "importance"

    .line 306
    .line 307
    invoke-virtual {v5, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 308
    .line 309
    .line 310
    :cond_d
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zztc;->zzb:Ljava/lang/String;

    .line 311
    .line 312
    const-string v0, "audio/raw"

    .line 313
    .line 314
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p3

    .line 318
    const/4 v1, 0x0

    .line 319
    if-eqz p3, :cond_e

    .line 320
    .line 321
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result p3

    .line 325
    if-nez p3, :cond_e

    .line 326
    .line 327
    move-object p3, p2

    .line 328
    goto :goto_4

    .line 329
    :cond_e
    move-object p3, v1

    .line 330
    :goto_4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzro;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    .line 331
    .line 332
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzro;->zze:Lcom/google/android/gms/internal/ads/zzsv;

    .line 333
    .line 334
    invoke-static {p1, v5, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzsw;->zza(Lcom/google/android/gms/internal/ads/zztc;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zzsv;)Lcom/google/android/gms/internal/ads/zzsw;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    return-object p1
.end method

.method public final zzag(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztq;
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 3
    .line 4
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzro;->zzaS(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zzz;ZLcom/google/android/gms/internal/ads/zzqi;)Ljava/util/List;

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
    .locals 5

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
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "audio/opus"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaL()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzf:Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    if-ne v1, v2, :cond_0

    .line 46
    .line 47
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    const-wide/32 v2, 0xbb80

    .line 58
    .line 59
    .line 60
    mul-long/2addr v0, v2

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 62
    .line 63
    const-wide/32 v3, 0x3b9aca00

    .line 64
    .line 65
    .line 66
    div-long/2addr v0, v3

    .line 67
    long-to-int v0, v0

    .line 68
    invoke-interface {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzr(II)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public final zzak(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzm(Ljava/lang/Exception;)V

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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 3
    .line 4
    invoke-virtual/range {p1 .. p6}, Lcom/google/android/gms/internal/ads/zzqa;->zzq(Ljava/lang/String;JJ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzam(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzr(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzan(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V
    .locals 10
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object p1, v0

    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaz()Lcom/google/android/gms/internal/ads/zzsz;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 23
    .line 24
    const-string v4, "audio/raw"

    .line 25
    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v5, 0x2

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v6, 0x18

    .line 39
    .line 40
    if-lt v0, v6, :cond_3

    .line 41
    .line 42
    const-string v0, "pcm-encoding"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_3

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzn(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move v0, v5

    .line 73
    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzx;

    .line 74
    .line 75
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 82
    .line 83
    .line 84
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 85
    .line 86
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzI(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 87
    .line 88
    .line 89
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzI:I

    .line 90
    .line 91
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzJ(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 92
    .line 93
    .line 94
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    .line 95
    .line 96
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zza:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 102
    .line 103
    .line 104
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzb:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 107
    .line 108
    .line 109
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzc:Ljava/util/List;

    .line 110
    .line 111
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzR(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 112
    .line 113
    .line 114
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 117
    .line 118
    .line 119
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zze:I

    .line 120
    .line 121
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaf(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 122
    .line 123
    .line 124
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    .line 125
    .line 126
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 127
    .line 128
    .line 129
    const-string v0, "channel-count"

    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 136
    .line 137
    .line 138
    const-string v0, "sample-rate"

    .line 139
    .line 140
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzg:Z

    .line 152
    .line 153
    const/4 v4, 0x6

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 157
    .line 158
    if-ne v0, v4, :cond_6

    .line 159
    .line 160
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 161
    .line 162
    if-ge p1, v4, :cond_6

    .line 163
    .line 164
    new-array v1, p1, [I

    .line 165
    .line 166
    move v0, v3

    .line 167
    :goto_1
    if-ge v0, p1, :cond_5

    .line 168
    .line 169
    aput v0, v1, v0

    .line 170
    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_5
    :goto_2
    move-object p1, p2

    .line 175
    goto :goto_3

    .line 176
    :cond_6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzh:Z

    .line 177
    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 181
    .line 182
    const/4 v0, 0x3

    .line 183
    if-eq p1, v0, :cond_b

    .line 184
    .line 185
    const/4 v6, 0x4

    .line 186
    const/4 v7, 0x5

    .line 187
    if-eq p1, v7, :cond_a

    .line 188
    .line 189
    if-eq p1, v4, :cond_9

    .line 190
    .line 191
    const/4 v8, 0x7

    .line 192
    if-eq p1, v8, :cond_8

    .line 193
    .line 194
    const/16 v9, 0x8

    .line 195
    .line 196
    if-eq p1, v9, :cond_7

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_7
    new-array v1, v9, [I

    .line 200
    .line 201
    aput v3, v1, v3

    .line 202
    .line 203
    aput v5, v1, v2

    .line 204
    .line 205
    aput v2, v1, v5

    .line 206
    .line 207
    aput v8, v1, v0

    .line 208
    .line 209
    aput v7, v1, v6

    .line 210
    .line 211
    aput v4, v1, v7

    .line 212
    .line 213
    aput v0, v1, v4

    .line 214
    .line 215
    aput v6, v1, v8

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_8
    new-array v1, v8, [I

    .line 219
    .line 220
    aput v3, v1, v3

    .line 221
    .line 222
    aput v5, v1, v2

    .line 223
    .line 224
    aput v2, v1, v5

    .line 225
    .line 226
    aput v4, v1, v0

    .line 227
    .line 228
    aput v7, v1, v6

    .line 229
    .line 230
    aput v0, v1, v7

    .line 231
    .line 232
    aput v6, v1, v4

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_9
    new-array v1, v4, [I

    .line 236
    .line 237
    aput v3, v1, v3

    .line 238
    .line 239
    aput v5, v1, v2

    .line 240
    .line 241
    aput v2, v1, v5

    .line 242
    .line 243
    aput v7, v1, v0

    .line 244
    .line 245
    aput v0, v1, v6

    .line 246
    .line 247
    aput v6, v1, v7

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_a
    new-array v1, v7, [I

    .line 251
    .line 252
    aput v3, v1, v3

    .line 253
    .line 254
    aput v5, v1, v2

    .line 255
    .line 256
    aput v2, v1, v5

    .line 257
    .line 258
    aput v0, v1, v0

    .line 259
    .line 260
    aput v6, v1, v6

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_b
    new-array v1, v0, [I

    .line 264
    .line 265
    aput v3, v1, v3

    .line 266
    .line 267
    aput v5, v1, v2

    .line 268
    .line 269
    aput v2, v1, v5

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :goto_3
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 273
    .line 274
    const/16 v0, 0x1d

    .line 275
    .line 276
    if-lt p2, v0, :cond_e

    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaL()Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_c

    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzn()Lcom/google/android/gms/internal/ads/zzlz;

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :catch_0
    move-exception p1

    .line 289
    goto :goto_6

    .line 290
    :cond_c
    :goto_4
    if-lt p2, v0, :cond_d

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :cond_d
    move v2, v3

    .line 294
    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 295
    .line 296
    .line 297
    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 298
    .line 299
    invoke-interface {p2, p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzqi;->zze(Lcom/google/android/gms/internal/ads/zzz;I[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqd; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :goto_6
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzqd;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 304
    .line 305
    const/16 v0, 0x1389

    .line 306
    .line 307
    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhz;->zzcX(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzik;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    throw p1
.end method

.method public final zzao()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzl:Z

    .line 3
    .line 4
    return-void
.end method

.method public final zzap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzg()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzaq()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzj()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqh; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaL()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x138a

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x138b

    .line 19
    .line 20
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    .line 21
    .line 22
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    .line 23
    .line 24
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhz;->zzcX(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzik;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    throw v0
.end method

.method public final zzar(JJLcom/google/android/gms/internal/ads/zzsz;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0
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
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzj:Lcom/google/android/gms/internal/ads/zzz;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    and-int/lit8 p1, p8, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsz;->zzo(IZ)V

    .line 18
    .line 19
    .line 20
    return p2

    .line 21
    :cond_0
    if-eqz p12, :cond_2

    .line 22
    .line 23
    if-eqz p5, :cond_1

    .line 24
    .line 25
    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsz;->zzo(IZ)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 29
    .line 30
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzia;->zzf:I

    .line 31
    .line 32
    add-int/2addr p3, p9

    .line 33
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzia;->zzf:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzqi;->zzg()V

    .line 38
    .line 39
    .line 40
    return p2

    .line 41
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 42
    .line 43
    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/gms/internal/ads/zzqi;->zzx(Ljava/nio/ByteBuffer;JI)Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqe; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzqh; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    if-eqz p5, :cond_3

    .line 50
    .line 51
    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsz;->zzo(IZ)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 55
    .line 56
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzia;->zze:I

    .line 57
    .line 58
    add-int/2addr p3, p9

    .line 59
    iput p3, p1, Lcom/google/android/gms/internal/ads/zzia;->zze:I

    .line 60
    .line 61
    return p2

    .line 62
    :cond_4
    return p3

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaL()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-nez p2, :cond_5

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzn()Lcom/google/android/gms/internal/ads/zzlz;

    .line 75
    .line 76
    .line 77
    :goto_1
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    .line 78
    .line 79
    const/16 p3, 0x138a

    .line 80
    .line 81
    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/gms/internal/ads/zzhz;->zzcX(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzik;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    throw p1

    .line 86
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzi:Lcom/google/android/gms/internal/ads/zzz;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaL()Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_6

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzn()Lcom/google/android/gms/internal/ads/zzlz;

    .line 95
    .line 96
    .line 97
    :cond_6
    iget-boolean p3, p1, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Z

    .line 98
    .line 99
    const/16 p4, 0x1389

    .line 100
    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhz;->zzcX(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzik;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    throw p1
.end method

.method public final zzas(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzn()Lcom/google/android/gms/internal/ads/zzlz;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqi;->zzA(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzc()Lcom/google/android/gms/internal/ads/zzbb;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqi;->zzs(Lcom/google/android/gms/internal/ads/zzbb;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzj()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzn:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzn:Z

    .line 5
    .line 6
    return v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzkw;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    return-object p0
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
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_7

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_6

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    if-eq p1, v0, :cond_5

    .line 9
    .line 10
    const/16 v0, 0xc

    .line 11
    .line 12
    if-eq p1, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    const/16 v1, 0x23

    .line 17
    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zztj;->zzu(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    check-cast p2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 42
    .line 43
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzqi;->zzn(I)V

    .line 44
    .line 45
    .line 46
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    if-lt p2, v1, :cond_3

    .line 49
    .line 50
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzro;->zze:Lcom/google/android/gms/internal/ads/zzsv;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzsv;->zzd(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast p2, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzv(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    check-cast p2, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzo:I

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzaz()Lcom/google/android/gms/internal/ads/zzsz;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    if-lt p2, v1, :cond_3

    .line 93
    .line 94
    new-instance p2, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzo:I

    .line 100
    .line 101
    neg-int v0, v0

    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const-string v1, "importance"

    .line 108
    .line 109
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzsz;->zzq(Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    return-void

    .line 116
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 117
    .line 118
    check-cast p2, Landroid/media/AudioDeviceInfo;

    .line 119
    .line 120
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzu(Landroid/media/AudioDeviceInfo;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzf;

    .line 125
    .line 126
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzo(Lcom/google/android/gms/internal/ads/zzf;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_6
    check-cast p2, Lcom/google/android/gms/internal/ads/zze;

    .line 136
    .line 137
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzm(Lcom/google/android/gms/internal/ads/zze;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    check-cast p2, Ljava/lang/Float;

    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzw(F)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final zzx()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzm:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzi:Lcom/google/android/gms/internal/ads/zzz;

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqi;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzx()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqa;->zzs(Lcom/google/android/gms/internal/ads/zzia;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_1
    move-exception v0

    .line 26
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zztj;->zzx()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqa;->zzs(Lcom/google/android/gms/internal/ads/zzia;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqa;->zzs(Lcom/google/android/gms/internal/ads/zzia;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final zzy(ZZ)V
    .locals 0
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
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzc:Lcom/google/android/gms/internal/ads/zzqa;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzia;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzqa;->zzt(Lcom/google/android/gms/internal/ads/zzia;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzn()Lcom/google/android/gms/internal/ads/zzlz;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzo()Lcom/google/android/gms/internal/ads/zzpc;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzt(Lcom/google/android/gms/internal/ads/zzpc;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhz;->zzi()Lcom/google/android/gms/internal/ads/zzdg;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzqi;->zzp(Lcom/google/android/gms/internal/ads/zzdg;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zzz(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzik;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztj;->zzz(JZ)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzro;->zzd:Lcom/google/android/gms/internal/ads/zzqi;

    .line 5
    .line 6
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzqi;->zzf()V

    .line 7
    .line 8
    .line 9
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzk:J

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzn:Z

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzro;->zzl:Z

    .line 16
    .line 17
    return-void
.end method
