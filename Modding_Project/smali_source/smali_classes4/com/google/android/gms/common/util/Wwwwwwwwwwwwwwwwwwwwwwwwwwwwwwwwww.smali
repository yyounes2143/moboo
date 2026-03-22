.class public final synthetic Lcom/google/android/gms/common/util/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/common/util/Clock;)J
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
