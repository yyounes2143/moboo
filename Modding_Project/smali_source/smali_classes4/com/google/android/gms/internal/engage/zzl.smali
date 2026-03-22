.class final Lcom/google/android/gms/internal/engage/zzl;
.super Lcom/google/android/gms/internal/engage/zze;
.source "Proguard"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/engage/zzm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/engage/zzm;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/engage/zzl;->zza:Lcom/google/android/gms/internal/engage/zzm;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/engage/zze;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/engage/zzl;->zza:Lcom/google/android/gms/internal/engage/zzm;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/engage/zzm;->zza:Lcom/google/android/gms/internal/engage/zzo;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzs(Lcom/google/android/gms/internal/engage/zzo;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/engage/zzo;->zzn(Lcom/google/android/gms/internal/engage/zzo;Landroid/os/IInterface;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/engage/zzo;->zzm(Lcom/google/android/gms/internal/engage/zzo;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
