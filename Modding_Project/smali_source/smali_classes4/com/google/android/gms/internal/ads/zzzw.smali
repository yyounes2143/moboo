.class public final synthetic Lcom/google/android/gms/internal/ads/zzzw;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzzx;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/ads/zzzx;

    .line 4
    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzzx;->zzc:F

    .line 6
    .line 7
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzzx;->zzc:F

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method
