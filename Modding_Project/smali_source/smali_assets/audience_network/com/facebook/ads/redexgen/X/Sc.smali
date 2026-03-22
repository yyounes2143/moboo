.class public abstract Lcom/facebook/ads/redexgen/X/Sc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Sb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Sb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64323
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Sc;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Sb;
    .locals 1

    .line 64324
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Sc;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/Sb;

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Sb;)V
    .locals 0

    .line 64325
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Sc;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sc;->A00:Lcom/facebook/ads/redexgen/X/Sb;

    .line 64326
    return-void
.end method

.method public abstract A03()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
