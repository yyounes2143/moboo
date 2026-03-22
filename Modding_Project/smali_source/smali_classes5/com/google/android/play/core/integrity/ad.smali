.class public final Lcom/google/android/play/core/integrity/ad;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/play/integrity/internal/ak;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/integrity/internal/s;

    .line 2
    .line 3
    const-string v1, "IntegrityService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/play/integrity/internal/s;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
