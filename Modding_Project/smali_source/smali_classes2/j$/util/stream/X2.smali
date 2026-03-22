.class public final enum Lj$/util/stream/X2;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DISTINCT:Lj$/util/stream/X2;

.field public static final enum ORDERED:Lj$/util/stream/X2;

.field public static final enum SHORT_CIRCUIT:Lj$/util/stream/X2;

.field public static final enum SIZED:Lj$/util/stream/X2;

.field public static final enum SORTED:Lj$/util/stream/X2;

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final synthetic v:[Lj$/util/stream/X2;


# instance fields
.field public final a:Ljava/util/EnumMap;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 247
    new-instance v5, Lj$/util/stream/X2;

    sget-object v6, Lj$/util/stream/W2;->SPLITERATOR:Lj$/util/stream/W2;

    .line 248
    invoke-static {v6}, Lj$/util/stream/X2;->n(Lj$/util/stream/W2;)Lj$/util/function/g;

    move-result-object v7

    sget-object v8, Lj$/util/stream/W2;->STREAM:Lj$/util/stream/W2;

    invoke-virtual {v7, v8}, Lj$/util/function/g;->b(Lj$/util/stream/W2;)V

    sget-object v9, Lj$/util/stream/W2;->OP:Lj$/util/stream/W2;

    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 395
    iget-object v11, v7, Lj$/util/function/g;->b:Ljava/lang/Object;

    check-cast v11, Ljava/util/EnumMap;

    invoke-virtual {v11, v9, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v10, "DISTINCT"

    invoke-direct {v5, v10, v2, v2, v7}, Lj$/util/stream/X2;-><init>(Ljava/lang/String;IILj$/util/function/g;)V

    sput-object v5, Lj$/util/stream/X2;->DISTINCT:Lj$/util/stream/X2;

    .line 268
    new-instance v7, Lj$/util/stream/X2;

    .line 269
    invoke-static {v6}, Lj$/util/stream/X2;->n(Lj$/util/stream/W2;)Lj$/util/function/g;

    move-result-object v10

    invoke-virtual {v10, v8}, Lj$/util/function/g;->b(Lj$/util/stream/W2;)V

    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 395
    iget-object v12, v10, Lj$/util/function/g;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/EnumMap;

    invoke-virtual {v12, v9, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v11, "SORTED"

    invoke-direct {v7, v11, v4, v4, v10}, Lj$/util/stream/X2;-><init>(Ljava/lang/String;IILj$/util/function/g;)V

    sput-object v7, Lj$/util/stream/X2;->SORTED:Lj$/util/stream/X2;

    .line 281
    new-instance v10, Lj$/util/stream/X2;

    .line 282
    invoke-static {v6}, Lj$/util/stream/X2;->n(Lj$/util/stream/W2;)Lj$/util/function/g;

    move-result-object v11

    invoke-virtual {v11, v8}, Lj$/util/function/g;->b(Lj$/util/stream/W2;)V

    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 395
    iget-object v13, v11, Lj$/util/function/g;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/EnumMap;

    invoke-virtual {v13, v9, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v12, Lj$/util/stream/W2;->TERMINAL_OP:Lj$/util/stream/W2;

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 395
    invoke-virtual {v13, v12, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v14, Lj$/util/stream/W2;->UPSTREAM_TERMINAL_OP:Lj$/util/stream/W2;

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 395
    invoke-virtual {v13, v14, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v13, "ORDERED"

    invoke-direct {v10, v13, v1, v1, v11}, Lj$/util/stream/X2;-><init>(Ljava/lang/String;IILj$/util/function/g;)V

    sput-object v10, Lj$/util/stream/X2;->ORDERED:Lj$/util/stream/X2;

    .line 296
    new-instance v11, Lj$/util/stream/X2;

    .line 297
    invoke-static {v6}, Lj$/util/stream/X2;->n(Lj$/util/stream/W2;)Lj$/util/function/g;

    move-result-object v13

    invoke-virtual {v13, v8}, Lj$/util/function/g;->b(Lj$/util/stream/W2;)V

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v16, v1

    .line 395
    iget-object v1, v13, Lj$/util/function/g;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v9, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "SIZED"

    invoke-direct {v11, v1, v3, v3, v13}, Lj$/util/stream/X2;-><init>(Ljava/lang/String;IILj$/util/function/g;)V

    sput-object v11, Lj$/util/stream/X2;->SIZED:Lj$/util/stream/X2;

    .line 327
    new-instance v1, Lj$/util/stream/X2;

    .line 328
    invoke-static {v9}, Lj$/util/stream/X2;->n(Lj$/util/stream/W2;)Lj$/util/function/g;

    move-result-object v13

    invoke-virtual {v13, v12}, Lj$/util/function/g;->b(Lj$/util/stream/W2;)V

    const/16 v15, 0xc

    move/from16 v17, v2

    const-string v2, "SHORT_CIRCUIT"

    invoke-direct {v1, v2, v0, v15, v13}, Lj$/util/stream/X2;-><init>(Ljava/lang/String;IILj$/util/function/g;)V

    sput-object v1, Lj$/util/stream/X2;->SHORT_CIRCUIT:Lj$/util/stream/X2;

    const/4 v2, 0x5

    .line 204
    new-array v2, v2, [Lj$/util/stream/X2;

    aput-object v5, v2, v17

    aput-object v7, v2, v4

    aput-object v10, v2, v16

    aput-object v11, v2, v3

    aput-object v1, v2, v0

    sput-object v2, Lj$/util/stream/X2;->v:[Lj$/util/stream/X2;

    .line 528
    invoke-static {v6}, Lj$/util/stream/X2;->i(Lj$/util/stream/W2;)I

    move-result v0

    sput v0, Lj$/util/stream/X2;->f:I

    .line 533
    invoke-static {v8}, Lj$/util/stream/X2;->i(Lj$/util/stream/W2;)I

    move-result v0

    sput v0, Lj$/util/stream/X2;->g:I

    .line 538
    invoke-static {v9}, Lj$/util/stream/X2;->i(Lj$/util/stream/W2;)I

    move-result v0

    sput v0, Lj$/util/stream/X2;->h:I

    .line 543
    invoke-static {v12}, Lj$/util/stream/X2;->i(Lj$/util/stream/W2;)I

    .line 548
    invoke-static {v14}, Lj$/util/stream/X2;->i(Lj$/util/stream/W2;)I

    .line 565
    invoke-static {}, Lj$/util/stream/X2;->values()[Lj$/util/stream/X2;

    move-result-object v0

    array-length v1, v0

    move/from16 v2, v17

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 566
    iget v3, v3, Lj$/util/stream/X2;->e:I

    or-int v17, v17, v3

    add-int/2addr v2, v4

    goto :goto_0

    .line 561
    :cond_0
    sput v17, Lj$/util/stream/X2;->i:I

    .line 574
    sget v0, Lj$/util/stream/X2;->g:I

    sput v0, Lj$/util/stream/X2;->j:I

    shl-int/lit8 v1, v0, 0x1

    .line 579
    sput v1, Lj$/util/stream/X2;->k:I

    or-int/2addr v0, v1

    .line 585
    sput v0, Lj$/util/stream/X2;->l:I

    .line 590
    sget-object v0, Lj$/util/stream/X2;->DISTINCT:Lj$/util/stream/X2;

    iget v1, v0, Lj$/util/stream/X2;->c:I

    sput v1, Lj$/util/stream/X2;->m:I

    .line 595
    iget v0, v0, Lj$/util/stream/X2;->d:I

    sput v0, Lj$/util/stream/X2;->n:I

    .line 600
    sget-object v0, Lj$/util/stream/X2;->SORTED:Lj$/util/stream/X2;

    iget v1, v0, Lj$/util/stream/X2;->c:I

    sput v1, Lj$/util/stream/X2;->o:I

    .line 605
    iget v0, v0, Lj$/util/stream/X2;->d:I

    sput v0, Lj$/util/stream/X2;->p:I

    .line 610
    sget-object v0, Lj$/util/stream/X2;->ORDERED:Lj$/util/stream/X2;

    iget v1, v0, Lj$/util/stream/X2;->c:I

    sput v1, Lj$/util/stream/X2;->q:I

    .line 615
    iget v0, v0, Lj$/util/stream/X2;->d:I

    sput v0, Lj$/util/stream/X2;->r:I

    .line 620
    sget-object v0, Lj$/util/stream/X2;->SIZED:Lj$/util/stream/X2;

    iget v1, v0, Lj$/util/stream/X2;->c:I

    sput v1, Lj$/util/stream/X2;->s:I

    .line 625
    iget v0, v0, Lj$/util/stream/X2;->d:I

    sput v0, Lj$/util/stream/X2;->t:I

    .line 630
    sget-object v0, Lj$/util/stream/X2;->SHORT_CIRCUIT:Lj$/util/stream/X2;

    iget v0, v0, Lj$/util/stream/X2;->c:I

    sput v0, Lj$/util/stream/X2;->u:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILj$/util/function/g;)V
    .locals 5

    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 412
    invoke-static {}, Lj$/util/stream/W2;->values()[Lj$/util/stream/W2;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p4, Lj$/util/function/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/EnumMap;

    if-ge v1, p2, :cond_0

    aget-object v3, p1, v1

    .line 413
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lj$/util/Map$-EL;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_0
    iput-object v2, p0, Lj$/util/stream/X2;->a:Ljava/util/EnumMap;

    const/4 p1, 0x2

    mul-int/2addr p3, p1

    .line 449
    iput p3, p0, Lj$/util/stream/X2;->b:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    .line 450
    iput p2, p0, Lj$/util/stream/X2;->c:I

    shl-int/2addr p1, p3

    .line 451
    iput p1, p0, Lj$/util/stream/X2;->d:I

    const/4 p1, 0x3

    shl-int/2addr p1, p3

    .line 452
    iput p1, p0, Lj$/util/stream/X2;->e:I

    return-void
.end method

.method public static h(II)I
    .locals 2

    if-nez p0, :cond_0

    .line 633
    sget v0, Lj$/util/stream/X2;->i:I

    goto :goto_0

    .line 635
    :cond_0
    sget v0, Lj$/util/stream/X2;->j:I

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, p0

    sget v1, Lj$/util/stream/X2;->k:I

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    not-int v0, v0

    :goto_0
    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static i(Lj$/util/stream/W2;)I
    .locals 6

    .line 552
    invoke-static {}, Lj$/util/stream/X2;->values()[Lj$/util/stream/X2;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 553
    iget-object v5, v4, Lj$/util/stream/X2;->a:Ljava/util/EnumMap;

    invoke-virtual {v5, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v4, v4, Lj$/util/stream/X2;->b:I

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public static k(Lj$/util/Spliterator;)I
    .locals 3

    .line 733
    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    .line 734
    sget v2, Lj$/util/stream/X2;->f:I

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object p0

    if-eqz p0, :cond_0

    and-int p0, v0, v2

    and-int/lit8 p0, p0, -0x5

    return p0

    :cond_0
    and-int p0, v0, v2

    return p0
.end method

.method public static n(Lj$/util/stream/W2;)Lj$/util/function/g;
    .locals 3

    .line 384
    new-instance v0, Lj$/util/function/g;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lj$/util/stream/W2;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lj$/util/function/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Lj$/util/function/g;->b(Lj$/util/stream/W2;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/X2;
    .locals 1

    .line 204
    const-class v0, Lj$/util/stream/X2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/stream/X2;

    return-object p0
.end method

.method public static values()[Lj$/util/stream/X2;
    .locals 1

    .line 204
    sget-object v0, Lj$/util/stream/X2;->v:[Lj$/util/stream/X2;

    invoke-virtual {v0}, [Lj$/util/stream/X2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/stream/X2;

    return-object v0
.end method


# virtual methods
.method public final l(I)Z
    .locals 1

    .line 491
    iget v0, p0, Lj$/util/stream/X2;->e:I

    and-int/2addr p1, v0

    iget v0, p0, Lj$/util/stream/X2;->c:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
