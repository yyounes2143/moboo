.class public final Lcom/jeremyliao/liveeventbus/core/Console;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->get()Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore;->console:Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$InnerConsole;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/jeremyliao/liveeventbus/core/LiveEventBusCore$InnerConsole;->getConsoleInfo()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
