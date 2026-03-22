.class public final synthetic Lcom/google/android/gms/internal/engage/zzf;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/engage/zzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/engage/zzo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/engage/zzf;->zza:Lcom/google/android/gms/internal/engage/zzo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/engage/zzf;->zza:Lcom/google/android/gms/internal/engage/zzo;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/engage/zzo;->zzj(Lcom/google/android/gms/internal/engage/zzo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
