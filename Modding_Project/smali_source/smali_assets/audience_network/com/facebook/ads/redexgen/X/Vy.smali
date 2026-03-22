.class public final Lcom/facebook/ads/redexgen/X/Vy;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final A02:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/facebook/ads/redexgen/X/Vy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Vh;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2142
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0TBfSTrFZZIPTbjcv3YvZ5KQe5wh6M4Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Y"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "skEIHJjGP8F0E9LHs3c03M6jOmkdnZrb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lNiM6G1VkMzjPhI0VWbHd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xoZoqEy9j11lJxTnOEXOmkmQN9dBXrj3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0lNV7cA9G3CxYQK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZSiJ5Be21P36sCEypxWEkyax05PjjigP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3dFveWP5h629GmfNhsyVO5v38YfKmNKK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vy;->A01:[Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A02:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70012
    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vh;

    .line 70013
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Vh;
    .locals 1

    .line 70014
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A02()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vh;

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Vx;)Lcom/facebook/ads/redexgen/X/Vh;
    .locals 2

    .line 70015
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A00()Lcom/facebook/ads/redexgen/X/Vh;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(Lcom/facebook/ads/redexgen/X/Vh;)V

    .line 70016
    .local v0, "currentStackTraces":Lcom/facebook/ads/redexgen/X/Vh;
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Vh;->add(Ljava/lang/Object;)Z

    .line 70017
    return-object v0
.end method

.method public static A02()Lcom/facebook/ads/redexgen/X/Vy;
    .locals 2

    .line 70018
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A02:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Vy;

    .line 70019
    .local v0, "stackTraceHelper":Lcom/facebook/ads/redexgen/X/Vy;
    if-nez v1, :cond_0

    .line 70020
    new-instance v1, Lcom/facebook/ads/redexgen/X/Vy;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Vy;-><init>()V

    .line 70021
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vy;->A02:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70022
    :cond_0
    return-object v1
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Vt;)V
    .locals 1

    .line 70023
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vt;->A06()Lcom/facebook/ads/redexgen/X/Vh;

    move-result-object p0

    .line 70024
    .local v0, "createRunnableAsyncStackTrace":Lcom/facebook/ads/redexgen/X/Vh;
    if-eqz p0, :cond_0

    .line 70025
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A02()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vh;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Vh;->addAll(Ljava/util/Collection;)Z

    .line 70026
    :cond_0
    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Vt;)V
    .locals 4

    .line 70027
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vt;->A06()Lcom/facebook/ads/redexgen/X/Vh;

    move-result-object p0

    .line 70028
    .local v0, "createRunnableAsyncStackTrace":Lcom/facebook/ads/redexgen/X/Vh;
    if-eqz p0, :cond_0

    .line 70029
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vy;->A02()Lcom/facebook/ads/redexgen/X/Vy;

    move-result-object v0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Vy;->A00:Lcom/facebook/ads/redexgen/X/Vh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vy;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vy;->A01:[Ljava/lang/String;

    const-string v1, "6tfOksRsBjIBNQljvPHCCYkD1Hr87lb7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/Vh;->removeAll(Ljava/util/Collection;)Z

    .line 70030
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
