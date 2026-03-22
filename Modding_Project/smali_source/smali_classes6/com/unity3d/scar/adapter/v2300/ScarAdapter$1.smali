.class Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2300/ScarAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IScarInterstitialAdListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/ScarAdapter;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/v2300/ScarAdapter;Lcom/unity3d/scar/adapter/v2300/scarads/ScarInterstitialAd;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/ScarAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarInterstitialAd;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarInterstitialAd;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1$1;-><init>(Lcom/unity3d/scar/adapter/v2300/ScarAdapter$1;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
