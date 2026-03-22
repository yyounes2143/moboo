.class public final Lcom/google/android/gms/internal/ads/zzcnf;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbow;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Lcom/google/android/gms/internal/ads/zzcnk;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbjw;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbjw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbow;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcnc;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcnc;-><init>(Lcom/google/android/gms/internal/ads/zzcnf;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zze:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcne;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcne;-><init>(Lcom/google/android/gms/internal/ads/zzcnf;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzf:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zza:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzb:Lcom/google/android/gms/internal/ads/zzbow;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzc:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcnf;)Lcom/google/android/gms/internal/ads/zzcnk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzd:Lcom/google/android/gms/internal/ads/zzcnk;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzcnf;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzc:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzcnf;Ljava/util/Map;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "hashCode"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zza:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzcnk;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzb:Lcom/google/android/gms/internal/ads/zzbow;

    .line 2
    .line 3
    const-string v1, "/updateActiveView"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zze:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbow;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "/untrackActiveViewUnit"

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzf:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbow;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzd:Lcom/google/android/gms/internal/ads/zzcnk;

    .line 18
    .line 19
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcfb;)V
    .locals 2

    .line 1
    const-string v0, "/updateActiveView"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zze:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "/untrackActiveViewUnit"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzf:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zze()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzb:Lcom/google/android/gms/internal/ads/zzbow;

    .line 2
    .line 3
    const-string v1, "/updateActiveView"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zze:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbow;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "/untrackActiveViewUnit"

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzf:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbow;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcfb;)V
    .locals 2

    .line 1
    const-string v0, "/updateActiveView"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zze:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaz(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "/untrackActiveViewUnit"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnf;->zzf:Lcom/google/android/gms/internal/ads/zzbjw;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaz(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjw;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
