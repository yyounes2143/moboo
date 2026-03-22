.class final Lcom/google/android/gms/internal/ads/zzaal;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzach;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabq;

.field private final zzc:Ljava/util/Queue;

.field private zzd:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzz;

.field private zzf:J

.field private zzg:J

.field private zzh:Lcom/google/android/gms/internal/ads/zzace;

.field private zzi:Ljava/util/concurrent/Executor;

.field private zzj:Lcom/google/android/gms/internal/ads/zzabi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabl;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzi(Lcom/google/android/gms/internal/ads/zzdg;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabq;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaj;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>(Lcom/google/android/gms/internal/ads/zzaal;Lcom/google/android/gms/internal/ads/zzaak;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzabq;-><init>(Lcom/google/android/gms/internal/ads/zzaaj;Lcom/google/android/gms/internal/ads/zzabl;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayDeque;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Ljava/util/Queue;

    .line 28
    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzx;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Lcom/google/android/gms/internal/ads/zzz;

    .line 39
    .line 40
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzf:J

    .line 46
    .line 47
    sget-object p1, Lcom/google/android/gms/internal/ads/zzace;->zzb:Lcom/google/android/gms/internal/ads/zzace;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:Lcom/google/android/gms/internal/ads/zzace;

    .line 50
    .line 51
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaad;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaad;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaae;

    .line 59
    .line 60
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaae;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:Lcom/google/android/gms/internal/ads/zzabi;

    .line 64
    .line 65
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaal;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaal;)Lcom/google/android/gms/internal/ads/zzabi;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:Lcom/google/android/gms/internal/ads/zzabi;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzaal;)Lcom/google/android/gms/internal/ads/zzace;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:Lcom/google/android/gms/internal/ads/zzace;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzaal;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzaal;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzaal;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:Lcom/google/android/gms/internal/ads/zzace;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->zzb()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final zzB()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabq;->zzg()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzC()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final zzD(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzm(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final zzb()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzb()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzk(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final zzj(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzg()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabq;->zza()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Ljava/util/Queue;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzk(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzc(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzl(ILcom/google/android/gms/internal/ads/zzz;JILjava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Lcom/google/android/gms/internal/ads/zzz;

    .line 9
    .line 10
    iget p6, p1, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 11
    .line 12
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    .line 13
    .line 14
    if-ne v0, p6, :cond_0

    .line 15
    .line 16
    iget p6, p2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 17
    .line 18
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 19
    .line 20
    if-eq p6, p1, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 23
    .line 24
    iget p6, p2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 25
    .line 26
    invoke-virtual {p1, v0, p6}, Lcom/google/android/gms/internal/ads/zzabq;->zzd(II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    .line 30
    .line 31
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Lcom/google/android/gms/internal/ads/zzz;

    .line 32
    .line 33
    iget p6, p6, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    .line 34
    .line 35
    cmpl-float p6, p1, p6

    .line 36
    .line 37
    if-eqz p6, :cond_2

    .line 38
    .line 39
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 40
    .line 41
    invoke-virtual {p6, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzj(F)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Lcom/google/android/gms/internal/ads/zzz;

    .line 45
    .line 46
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzf:J

    .line 47
    .line 48
    cmp-long p1, p3, p1

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 53
    .line 54
    invoke-virtual {p1, p5, p3, p4}, Lcom/google/android/gms/internal/ads/zzabq;->zzc(IJ)V

    .line 55
    .line 56
    .line 57
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzf:J

    .line 58
    .line 59
    :cond_3
    return-void
.end method

.method public final zzm()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final zzn()V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzo(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzacg;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzabq;->zze(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzik; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzacg;

    .line 9
    .line 10
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zze:Lcom/google/android/gms/internal/ads/zzz;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;)V

    .line 13
    .line 14
    .line 15
    throw p2
.end method

.method public final zzp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:J

    .line 2
    .line 3
    return-void
.end method

.method public final zzq(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzh(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzace;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzh:Lcom/google/android/gms/internal/ads/zzace;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    return-void
.end method

.method public final zzs(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzd:Landroid/view/Surface;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzk(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzt(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzl(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzu(Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzabi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzj:Lcom/google/android/gms/internal/ads/zzabi;

    .line 2
    .line 3
    return-void
.end method

.method public final zzw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabq;->zzf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzx()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zza:Lcom/google/android/gms/internal/ads/zzabl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabl;->zze()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzz(JLcom/google/android/gms/internal/ads/zzacf;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzc:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzg:J

    .line 7
    .line 8
    sub-long/2addr p1, v0

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    .line 10
    .line 11
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzabq;->zzb(J)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaal;->zzi:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaaf;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaaf;-><init>(Lcom/google/android/gms/internal/ads/zzaal;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method
