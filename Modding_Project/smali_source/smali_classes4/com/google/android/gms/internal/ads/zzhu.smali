.class final Lcom/google/android/gms/internal/ads/zzhu;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-interface {p5, p2, p1}, Lcom/google/android/gms/internal/ads/zzdg;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdq;

    .line 9
    .line 10
    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/zzhs;

    .line 12
    .line 13
    invoke-interface {p5, p3, p1}, Lcom/google/android/gms/internal/ads/zzdg;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdq;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(Lcom/google/android/gms/internal/ads/zzhu;Lcom/google/android/gms/internal/ads/zzdq;Lcom/google/android/gms/internal/ads/zzht;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
