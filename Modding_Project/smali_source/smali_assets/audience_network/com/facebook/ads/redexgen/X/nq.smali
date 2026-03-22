.class public final Lcom/facebook/ads/redexgen/X/nq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/np;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemMessage"
.end annotation


# instance fields
.field public A00:Landroid/os/Message;

.field public A01:Lcom/facebook/ads/redexgen/X/np;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4P;)V
    .locals 0

    .line 101128
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nq;-><init>()V

    return-void
.end method

.method private A00()V
    .locals 1

    .line 101129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nq;->A00:Landroid/os/Message;

    .line 101130
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nq;->A01:Lcom/facebook/ads/redexgen/X/np;

    .line 101131
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/np;->A02(Lcom/facebook/ads/redexgen/X/nq;)V

    .line 101132
    return-void
.end method


# virtual methods
.method public final A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/np;)Lcom/facebook/ads/redexgen/X/nq;
    .locals 0

    .line 101133
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nq;->A00:Landroid/os/Message;

    .line 101134
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nq;->A01:Lcom/facebook/ads/redexgen/X/np;

    .line 101135
    return-object p0
.end method

.method public final A02()V
    .locals 1

    .line 101136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nq;->A00:Landroid/os/Message;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101137
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nq;->A00()V

    .line 101138
    return-void
.end method

.method public final A03(Landroid/os/Handler;)Z
    .locals 1

    .line 101139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nq;->A00:Landroid/os/Message;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 101140
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nq;->A00()V

    .line 101141
    return v0
.end method
