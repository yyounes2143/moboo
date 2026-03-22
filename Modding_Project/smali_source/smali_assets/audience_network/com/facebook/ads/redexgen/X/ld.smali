.class public final synthetic Lcom/facebook/ads/redexgen/X/ld;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3X;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 96821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A31(Ljava/lang/Object;)V
    .locals 0

    .line 96822
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
