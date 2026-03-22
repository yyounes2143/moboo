.class Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$SingletonHolder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final DEFAULT_BUS:Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;-><init>(Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$SingletonHolder;->DEFAULT_BUS:Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 8
    .line 9
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

.method public static synthetic access$100()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;
    .locals 1

    .line 1
    sget-object v0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$SingletonHolder;->DEFAULT_BUS:Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 2
    .line 3
    return-object v0
.end method
