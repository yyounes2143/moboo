.class public final Lcom/facebook/ads/redexgen/X/Vn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Tt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordFileBasedFetch"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ty;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Z

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Vm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vm;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Tp;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69713
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    .local p2, "fetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69714
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Vn;->A01:Z

    .line 69715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:Ljava/util/List;

    .line 69716
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tp;

    .line 69717
    .local v0, "fetch":Lcom/facebook/ads/redexgen/X/Tp;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A01()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v5

    .line 69718
    .local v1, "fileFetchResult":Lcom/facebook/ads/redexgen/X/To;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:Ljava/util/List;

    .line 69719
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A00()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A01()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Tm;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Tm;-><init>(II)V

    .line 69720
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A00()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    .line 69721
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/To;->A00()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ty;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ty;-><init>(Lcom/facebook/ads/redexgen/X/Tm;II)V

    .line 69722
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69723
    .end local v0    # "fetch":Lcom/facebook/ads/redexgen/X/Tp;
    .end local v1    # "fileFetchResult":Lcom/facebook/ads/redexgen/X/To;
    goto :goto_0

    .line 69724
    :cond_0
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Ty;
    .locals 2

    .line 69725
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ty;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Ty;
    .locals 2

    .line 69726
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ty;

    return-object v0
.end method

.method public final A5h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/U3;
        }
    .end annotation

    .line 69727
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Vm;->A04(Lcom/facebook/ads/redexgen/X/Vm;Lcom/facebook/ads/redexgen/X/Vn;)V

    .line 69728
    return-void
.end method

.method public final declared-synchronized A6P()I
    .locals 3

    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 69729
    const/4 v2, 0x0

    .line 69730
    .local v0, "count":I
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ty;

    .line 69731
    .local v2, "location":Lcom/facebook/ads/redexgen/X/Ty;
    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ty;->A01:I

    add-int/2addr v2, v0

    .line 69732
    .end local v2    # "location":Lcom/facebook/ads/redexgen/X/Ty;
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69733
    .end local p1
    :cond_0
    monitor-exit p0

    return v2

    .line 69734
    .end local v0    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ABp()Z
    .locals 1

    .line 69735
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A01:Z

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69736
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:Lcom/facebook/ads/redexgen/X/Vm;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Vm;->A07(Lcom/facebook/ads/redexgen/X/Vm;Lcom/facebook/ads/redexgen/X/Vn;)Z

    .line 69737
    return-void
.end method
