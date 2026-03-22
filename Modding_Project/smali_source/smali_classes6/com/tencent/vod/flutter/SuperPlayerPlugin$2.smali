.class Lcom/tencent/vod/flutter/SuperPlayerPlugin$2;
.super Landroid/database/ContentObserver;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/SuperPlayerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/SuperPlayerPlugin;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$2;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;I)V
    .locals 0
    .param p2    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/tencent/vod/flutter/SuperPlayerPlugin$2;->this$0:Lcom/tencent/vod/flutter/SuperPlayerPlugin;

    .line 5
    .line 6
    const-wide/high16 p2, -0x4010000000000000L    # -1.0

    .line 7
    .line 8
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Lcom/tencent/vod/flutter/SuperPlayerPlugin;->access$000(Lcom/tencent/vod/flutter/SuperPlayerPlugin;Ljava/lang/Double;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
