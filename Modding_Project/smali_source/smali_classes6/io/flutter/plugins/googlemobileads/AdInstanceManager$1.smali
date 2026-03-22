.class Lio/flutter/plugins/googlemobileads/AdInstanceManager$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/googlemobileads/AdInstanceManager;->invokeOnAdEvent(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

.field final synthetic val$arguments:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/googlemobileads/AdInstanceManager;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/AdInstanceManager$1;->this$0:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/AdInstanceManager$1;->val$arguments:Ljava/util/Map;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/AdInstanceManager$1;->this$0:Lio/flutter/plugins/googlemobileads/AdInstanceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lio/flutter/plugins/googlemobileads/AdInstanceManager;->access$000(Lio/flutter/plugins/googlemobileads/AdInstanceManager;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onAdEvent"

    .line 8
    .line 9
    iget-object v2, p0, Lio/flutter/plugins/googlemobileads/AdInstanceManager$1;->val$arguments:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
