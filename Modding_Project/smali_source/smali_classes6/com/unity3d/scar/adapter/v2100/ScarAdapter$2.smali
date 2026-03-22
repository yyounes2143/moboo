.class Lcom/unity3d/scar/adapter/v2100/ScarAdapter$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2100/ScarAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;Lcom/unity3d/scar/adapter/common/IScarRewardedAdListenerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/ScarAdapter;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/scarads/ScarRewardedAd;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/v2100/ScarAdapter;Lcom/unity3d/scar/adapter/v2100/scarads/ScarRewardedAd;Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/ScarAdapter$2;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/ScarAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2100/ScarAdapter$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/scarads/ScarRewardedAd;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2100/ScarAdapter$2;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/ScarAdMetadata;

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
    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/ScarAdapter$2;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/v2100/scarads/ScarRewardedAd;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/scar/adapter/v2100/ScarAdapter$2$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/unity3d/scar/adapter/v2100/ScarAdapter$2$1;-><init>(Lcom/unity3d/scar/adapter/v2100/ScarAdapter$2;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2100/scarads/ScarAdBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/unity3d/scar/adapter/common/scarads/IScarLoadListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
