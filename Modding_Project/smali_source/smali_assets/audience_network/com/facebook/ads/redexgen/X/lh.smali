.class public final Lcom/facebook/ads/redexgen/X/lh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/EO;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[Lcom/facebook/ads/redexgen/X/EM;

.field public final A04:I

.field public final A05:Z

.field public final A06:[B


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    .line 96922
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/lh;-><init>(ZII)V

    .line 96923
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 5

    .line 96924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96925
    const/4 v1, 0x0

    if-lez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 96926
    if-ltz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 96927
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/lh;->A05:Z

    .line 96928
    iput p2, p0, Lcom/facebook/ads/redexgen/X/lh;->A04:I

    .line 96929
    iput p3, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    .line 96930
    add-int/lit8 v0, p3, 0x64

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/EM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    .line 96931
    if-lez p3, :cond_2

    .line 96932
    mul-int v0, p3, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A06:[B

    .line 96933
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v4, p3, :cond_3

    .line 96934
    mul-int v3, v4, p2

    .line 96935
    .local v1, "allocationOffset":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A06:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/EM;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/EM;-><init>([BI)V

    aput-object v0, v2, v4

    .line 96936
    .end local v1    # "allocationOffset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96937
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 96938
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A06:[B

    .line 96939
    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()I
    .locals 2

    monitor-enter p0

    .line 96940
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A04:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v1, v0

    monitor-exit p0

    return v1

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lh;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01()V
    .locals 1

    monitor-enter p0

    .line 96941
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A05:Z

    if-eqz v0, :cond_0

    .line 96942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/lh;->A02(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96943
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lh;
    :cond_0
    monitor-exit p0

    return-void

    .line 96944
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02(I)V
    .locals 1

    monitor-enter p0

    .line 96945
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A02:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96946
    .local v0, "targetBufferSizeReduced":Z
    :goto_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/lh;->A02:I

    .line 96947
    if-eqz v0, :cond_1

    .line 96948
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/lh;->AJi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96949
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lh;
    :cond_1
    monitor-exit p0

    return-void

    .line 96950
    .end local v0    # "targetBufferSizeReduced":Z
    .end local p1    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A41()Lcom/facebook/ads/redexgen/X/EM;
    .locals 4

    monitor-enter p0

    .line 96951
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    .line 96952
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    if-lez v0, :cond_0

    .line 96953
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/EM;

    .line 96954
    .local v0, "allocation":Lcom/facebook/ads/redexgen/X/EM;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    const/4 v0, 0x0

    aput-object v0, v2, v1

    goto :goto_0

    .line 96955
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A04:I

    new-array v1, v0, [B

    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/EM;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/EM;-><init>([BI)V

    .line 96956
    .restart local v0    # "allocation":Lcom/facebook/ads/redexgen/X/EM;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    array-length v0, v0

    if-le v1, v0, :cond_1

    .line 96957
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/EM;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96958
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v3

    .line 96959
    .end local v0    # "allocation":Lcom/facebook/ads/redexgen/X/EM;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A8A()I
    .locals 1

    .line 96960
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A04:I

    return v0
.end method

.method public final declared-synchronized AGt(Lcom/facebook/ads/redexgen/X/EM;)V
    .locals 3

    monitor-enter p0

    .line 96961
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    aput-object p1, v2, v1

    .line 96962
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    .line 96963
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96964
    monitor-exit p0

    return-void

    .line 96965
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lh;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/EM;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AGu(Lcom/facebook/ads/redexgen/X/EN;)V
    .locals 3

    monitor-enter p0

    .line 96966
    :goto_0
    if-eqz p1, :cond_0

    .line 96967
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/EN;->A6m()Lcom/facebook/ads/redexgen/X/EM;

    move-result-object v0

    aput-object v0, v2, v1

    .line 96968
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    .line 96969
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/EN;->AC3()Lcom/facebook/ads/redexgen/X/mG;

    move-result-object p1

    goto :goto_0

    .line 96970
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lh;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96971
    monitor-exit p0

    return-void

    .line 96972
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/EN;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AJi()V
    .locals 8

    monitor-enter p0

    .line 96973
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A04:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4a;->A05(II)I

    move-result v1

    .line 96974
    .local v0, "targetAllocationCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A00:I

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 96975
    .local v1, "targetAvailableCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    if-lt v3, v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96976
    monitor-exit p0

    return-void

    .line 96977
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A06:[B

    if-eqz v0, :cond_4

    .line 96978
    const/4 v7, 0x0

    .line 96979
    .local v2, "lowIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    add-int/lit8 v6, v0, -0x1

    .line 96980
    .local v3, "highIndex":I
    :goto_0
    if-gt v7, v6, :cond_3

    .line 96981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    aget-object v0, v0, v7

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/EM;

    .line 96982
    .local v4, "lowAllocation":Lcom/facebook/ads/redexgen/X/EM;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/EM;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A06:[B

    if-ne v1, v0, :cond_1

    .line 96983
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 96984
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/EM;

    .line 96985
    .local v5, "highAllocation":Lcom/facebook/ads/redexgen/X/EM;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/EM;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A06:[B

    if-eq v1, v0, :cond_2

    .line 96986
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 96987
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    add-int/lit8 v2, v7, 0x1

    .end local v2    # "lowIndex":I
    .local v7, "lowIndex":I
    aput-object v4, v0, v7

    .line 96988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    add-int/lit8 v0, v6, -0x1

    .end local v3    # "highIndex":I
    .local v6, "highIndex":I
    aput-object v5, v1, v6

    move v6, v0

    move v7, v2

    goto :goto_0

    .line 96989
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lh;
    :cond_3
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 96990
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    if-lt v3, v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96991
    monitor-exit p0

    return-void

    .line 96992
    .end local v2
    .end local v3
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lh;->A03:[Lcom/facebook/ads/redexgen/X/EM;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I

    const/4 v0, 0x0

    invoke-static {v2, v3, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 96993
    iput v3, p0, Lcom/facebook/ads/redexgen/X/lh;->A01:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96994
    monitor-exit p0

    return-void

    .line 96995
    .end local v0    # "targetAllocationCount":I
    .end local v1    # "targetAvailableCount":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
