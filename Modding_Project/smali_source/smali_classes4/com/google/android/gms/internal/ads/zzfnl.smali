.class public final Lcom/google/android/gms/internal/ads/zzfnl;
.super Lcom/google/android/gms/internal/ads/zzfnj;
.source "Proguard"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfnj;-><init>(Lcom/google/android/gms/internal/ads/zzfnb;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnj;->zzd:Lcom/google/android/gms/internal/ads/zzfnb;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfnb;->zze(Lorg/json/JSONObject;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
