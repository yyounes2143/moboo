.class final Lcom/google/android/gms/internal/engage/zzk;
.super Lcom/google/android/gms/internal/engage/zze;
.source "Proguard"


# instance fields
.field final synthetic zza:Landroid/os/IBinder;

.field final synthetic zzb:Lcom/google/android/gms/internal/engage/zzm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/engage/zzm;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/engage/zzk;->zza:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/engage/zzk;->zzb:Lcom/google/android/gms/internal/engage/zzm;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/engage/zze;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/engage/zzk;->zza:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/engage/protocol/IAppEngageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/engage/protocol/IAppEngageService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/engage/zzk;->zzb:Lcom/google/android/gms/internal/engage/zzm;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/engage/zzm;->zza:Lcom/google/android/gms/internal/engage/zzo;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/engage/zzo;->zzn(Lcom/google/android/gms/internal/engage/zzo;Landroid/os/IInterface;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/engage/zzo;->zzr(Lcom/google/android/gms/internal/engage/zzo;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/engage/zzo;->zzm(Lcom/google/android/gms/internal/engage/zzo;Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/engage/zzo;->zzh(Lcom/google/android/gms/internal/engage/zzo;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/Runnable;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/engage/zzo;->zzh(Lcom/google/android/gms/internal/engage/zzo;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    .line 51
    .line 52
    return-void
.end method
