.class Lcom/unity3d/scar/adapter/v2300/ScarAdapter$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2300/ScarAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;IILcom/unity3d/scar/adapter/common/IScarBannerAdListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/ScarAdapter;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/v2300/ScarAdapter;Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$3;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/ScarAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$3;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2300/ScarAdapter$3;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2300/scarads/ScarBannerAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2300/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
