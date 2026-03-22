.class public abstract Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/scarads/IScarAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/unity3d/scar/adapter/common/scarads/IScarAd;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdListener;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/IAdsErrorHandler;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/ads/AdRequest;Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2300/requests/AdRequestFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdListener;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/android/gms/ads/AdRequest;Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
