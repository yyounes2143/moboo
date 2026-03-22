.class public Lcom/google/android/gms/internal/ads/zztb;
.super Lcom/google/android/gms/internal/ads/zzhn;
.source "Proguard"


# instance fields
.field public final zza:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zztc;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zztc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zztc;->zza:Ljava/lang/String;

    .line 6
    .line 7
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "Decoder failed: "

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    check-cast p1, Landroid/media/MediaCodec$CodecException;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zztb;->zza:I

    .line 36
    .line 37
    return-void
.end method
