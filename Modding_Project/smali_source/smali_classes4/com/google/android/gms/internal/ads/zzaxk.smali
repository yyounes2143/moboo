.class public final Lcom/google/android/gms/internal/ads/zzaxk;
.super Lcom/google/android/gms/internal/ads/zzayb;
.source "Proguard"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzask;II)V
    .locals 7

    .line 1
    const-string v3, "AVj0chiCvO7NARSM7gnUx+yq9iwGX0sKyhH1s5c2UEE="

    .line 2
    .line 3
    const/16 v6, 0x4c

    .line 4
    .line 5
    const-string v2, "dRD+JVHrAp9KS52Ek5z+07PqwexnB2SlEw3dstFC/1pUdbIUHq4sOL+yEg/9GhsH"

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayb;-><init>(Lcom/google/android/gms/internal/ads/zzawo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzask;II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zze:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zza:Lcom/google/android/gms/internal/ads/zzawo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzb()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v1, v3, v4

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v2, v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x2

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzd:Lcom/google/android/gms/internal/ads/zzask;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzask;->zzaa(I)Lcom/google/android/gms/internal/ads/zzask;

    .line 33
    .line 34
    .line 35
    return-void
.end method
