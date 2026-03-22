.class public final Lcom/facebook/ads/redexgen/X/A9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/pp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/A8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/A8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A8;)V
    .locals 0

    .line 28815
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AF8()V
    .locals 4

    .line 28816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/redexgen/X/A8;)Ljava/util/LinkedHashMap;

    move-result-object v3

    monitor-enter v3

    .line 28817
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/redexgen/X/A8;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28818
    .local v1, "runnablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/redexgen/X/A8;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 28819
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28820
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 28821
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 28822
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28823
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/A8;->A03(Lcom/facebook/ads/redexgen/X/A8;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 28824
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28825
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 28826
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 28827
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 28828
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A00(Lcom/facebook/ads/redexgen/X/A8;)Lcom/facebook/ads/redexgen/X/pp;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 28829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:Lcom/facebook/ads/redexgen/X/A8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A00(Lcom/facebook/ads/redexgen/X/A8;)Lcom/facebook/ads/redexgen/X/pp;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/pp;->AF8()V

    .line 28830
    :cond_3
    return-void

    .line 28831
    .end local v1    # "runnablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
