.class Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/ScarAdapterBase;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/ScarAdapterBase;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/ScarAdapterBase;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

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
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/ScarAdapterBase;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/unity3d/scar/adapter/common/scarads/IScarFullScreenAd;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/scar/adapter/common/ScarAdapterBase$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/scarads/IScarFullScreenAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
