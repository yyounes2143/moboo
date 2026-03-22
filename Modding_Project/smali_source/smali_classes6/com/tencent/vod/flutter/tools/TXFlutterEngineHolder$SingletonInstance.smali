.class final Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$SingletonInstance;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonInstance"
.end annotation


# static fields
.field private static final instance:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$SingletonInstance;->instance:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000()Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder$SingletonInstance;->instance:Lcom/tencent/vod/flutter/tools/TXFlutterEngineHolder;

    .line 2
    .line 3
    return-object v0
.end method
