.class public final Lj$/time/chrono/x;
.super Lj$/time/chrono/d;
.source "SourceFile"


# static fields
.field public static final d:Lj$/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field public final transient a:Lj$/time/LocalDate;

.field public final transient b:Lj$/time/chrono/y;

.field public final transient c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x751

    const/4 v1, 0x1

    .line 149
    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->N(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Lj$/time/LocalDate;)V
    .locals 5

    .line 343
    invoke-direct {p0}, Lj$/time/chrono/d;-><init>()V

    .line 2083
    sget-object v0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    invoke-static {v0}, Lj$/time/c;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2084
    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->F(Lj$/time/LocalDate;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {p1}, Lj$/time/LocalDate;->s()J

    move-result-wide v3

    .line 747
    invoke-virtual {v0}, Lj$/time/LocalDate;->s()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 350
    invoke-static {p1}, Lj$/time/chrono/y;->j(Lj$/time/LocalDate;)Lj$/time/chrono/y;

    move-result-object v0

    iput-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 272
    iget-object v0, v0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 352
    iget v1, p1, Lj$/time/LocalDate;->a:I

    iget v0, v0, Lj$/time/LocalDate;->a:I

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lj$/time/chrono/x;->c:I

    .line 353
    iput-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    return-void

    .line 345
    :cond_2
    new-instance p1, Lj$/time/b;

    .line 88
    const-string v0, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 345
    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 774
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 791
    new-instance v0, Lj$/time/chrono/E;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/E;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 6

    .line 420
    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    invoke-virtual {v0}, Lj$/time/chrono/y;->m()Lj$/time/chrono/y;

    move-result-object v1

    .line 421
    iget-object v2, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    iget v4, v1, Lj$/time/LocalDate;->a:I

    iget v5, v2, Lj$/time/LocalDate;->a:I

    if-ne v4, v5, :cond_0

    .line 422
    invoke-virtual {v1}, Lj$/time/LocalDate;->K()I

    move-result v1

    sub-int/2addr v1, v3

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v2}, Lj$/time/LocalDate;->A()I

    move-result v1

    .line 426
    :goto_0
    iget v2, p0, Lj$/time/chrono/x;->c:I

    if-ne v2, v3, :cond_1

    .line 272
    iget-object v0, v0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 427
    invoke-virtual {v0}, Lj$/time/LocalDate;->K()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public final G()Lj$/time/chrono/m;
    .locals 1

    .line 396
    iget-object v0, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    return-object v0
.end method

.method public final H(J)Lj$/time/chrono/b;
    .locals 1

    .line 677
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->plusDays(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->M(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final I(J)Lj$/time/chrono/b;
    .locals 1

    .line 667
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->Q(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->M(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final J(J)Lj$/time/chrono/b;
    .locals 1

    .line 662
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Lj$/time/LocalDate;->R(J)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->M(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final K(Lj$/time/temporal/n;)Lj$/time/chrono/b;
    .locals 0

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/d;->K(Lj$/time/temporal/n;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final L(JLj$/time/temporal/p;)Lj$/time/chrono/x;
    .locals 7

    .line 566
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    .line 567
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 568
    invoke-virtual {p0, v0}, Lj$/time/chrono/x;->r(Lj$/time/temporal/p;)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-object p0

    .line 571
    :cond_0
    sget-object v1, Lj$/time/chrono/w;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    iget-object v3, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 384
    :cond_1
    sget-object v2, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    .line 575
    invoke-virtual {v2, v0}, Lj$/time/chrono/v;->i(Lj$/time/temporal/a;)Lj$/time/temporal/t;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lj$/time/temporal/t;->a(JLj$/time/temporal/p;)I

    move-result v2

    .line 576
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    .line 588
    :goto_0
    invoke-virtual {v3, p1, p2, p3}, Lj$/time/LocalDate;->T(JLj$/time/temporal/p;)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->M(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 580
    :cond_2
    invoke-virtual {v3, v2}, Lj$/time/LocalDate;->W(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->M(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 582
    :cond_3
    invoke-static {v2}, Lj$/time/chrono/y;->q(I)Lj$/time/chrono/y;

    move-result-object p1

    iget p2, p0, Lj$/time/chrono/x;->c:I

    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/x;->N(Lj$/time/chrono/y;I)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 656
    :cond_4
    iget-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    invoke-virtual {p0, p1, v2}, Lj$/time/chrono/x;->N(Lj$/time/chrono/y;I)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 590
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->c(JLj$/time/temporal/p;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final M(Lj$/time/LocalDate;)Lj$/time/chrono/x;
    .locals 1

    .line 711
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v0}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/chrono/x;

    invoke-direct {v0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    return-object v0
.end method

.method public final N(Lj$/time/chrono/y;I)Lj$/time/chrono/x;
    .locals 3

    .line 638
    sget-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_2

    .line 272
    iget-object v0, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 350
    iget v0, v0, Lj$/time/LocalDate;->a:I

    add-int v1, v0, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const p2, -0x3b9ac9ff

    if-lt v1, p2, :cond_1

    const p2, 0x3b9ac9ff

    if-gt v1, p2, :cond_1

    if-lt v1, v0, :cond_1

    .line 362
    invoke-static {v1, v2, v2}, Lj$/time/LocalDate;->N(III)Lj$/time/LocalDate;

    move-result-object p2

    invoke-static {p2}, Lj$/time/chrono/y;->j(Lj$/time/LocalDate;)Lj$/time/chrono/y;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 639
    :goto_0
    iget-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1, v1}, Lj$/time/LocalDate;->W(I)Lj$/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->M(Lj$/time/LocalDate;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1

    .line 366
    :cond_1
    new-instance p1, Lj$/time/b;

    .line 88
    const-string p2, "Invalid yearOfEra value"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 366
    throw p1

    .line 344
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lj$/time/chrono/l;
    .locals 1

    .line 384
    sget-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    return-object v0
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/chrono/b;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/x;->L(JLj$/time/temporal/p;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(JLj$/time/temporal/p;)Lj$/time/temporal/l;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/chrono/x;->L(JLj$/time/temporal/p;)Lj$/time/chrono/x;

    move-result-object p1

    return-object p1
.end method

.method public final d(JLj$/time/temporal/r;)Lj$/time/chrono/b;
    .locals 0

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/r;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final d(JLj$/time/temporal/r;)Lj$/time/temporal/l;
    .locals 0

    .line 682
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->d(JLj$/time/temporal/r;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final e(Lj$/time/temporal/p;)Z
    .locals 1

    .line 465
    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 475
    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->r()Z

    move-result p1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    .line 477
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->k(Lj$/time/temporal/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 749
    :cond_0
    instance-of v0, p1, Lj$/time/chrono/x;

    if-eqz v0, :cond_1

    .line 750
    check-cast p1, Lj$/time/chrono/x;

    .line 751
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    iget-object p1, p1, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0, p1}, Lj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final h(JLj$/time/temporal/ChronoUnit;)Lj$/time/temporal/l;
    .locals 0

    .line 687
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->z(JLj$/time/temporal/r;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 384
    sget-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    .line 763
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->hashCode()I

    move-result v0

    const v1, -0x29035c2f

    xor-int/2addr v0, v1

    return v0
.end method

.method public final k(Lj$/time/LocalDate;)Lj$/time/temporal/l;
    .locals 0

    .line 600
    invoke-super {p0, p1}, Lj$/time/chrono/d;->K(Lj$/time/temporal/n;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method

.method public final l(Lj$/time/temporal/p;)Lj$/time/temporal/t;
    .locals 5

    .line 482
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    .line 483
    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->e(Lj$/time/temporal/p;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    check-cast p1, Lj$/time/temporal/a;

    .line 485
    sget-object v0, Lj$/time/chrono/w;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 384
    sget-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    .line 503
    invoke-virtual {v0, p1}, Lj$/time/chrono/v;->i(Lj$/time/temporal/a;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 272
    :cond_0
    iget-object p1, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    iget-object v0, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 495
    invoke-virtual {p1}, Lj$/time/chrono/y;->m()Lj$/time/chrono/y;

    move-result-object p1

    .line 496
    iget v0, v0, Lj$/time/LocalDate;->a:I

    if-eqz p1, :cond_1

    .line 762
    iget-object p1, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 497
    iget p1, p1, Lj$/time/LocalDate;->a:I

    sub-int/2addr p1, v0

    add-int/2addr p1, v1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x3b9ac9ff

    sub-int/2addr p1, v0

    int-to-long v0, p1

    .line 500
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 487
    :cond_2
    invoke-virtual {p0}, Lj$/time/chrono/x;->A()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 409
    :cond_3
    iget-object p1, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->L()I

    move-result p1

    int-to-long v0, p1

    .line 486
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/t;->e(JJ)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1

    .line 505
    :cond_4
    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 505
    throw v0

    .line 507
    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->n(Lj$/time/temporal/m;)Lj$/time/temporal/t;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lj$/time/temporal/p;)J
    .locals 4

    .line 512
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    .line 518
    sget-object v0, Lj$/time/chrono/w;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget v1, p0, Lj$/time/chrono/x;->c:I

    iget-object v2, p0, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    iget-object v3, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    packed-switch v0, :pswitch_data_0

    .line 539
    invoke-virtual {v3, p1}, Lj$/time/LocalDate;->r(Lj$/time/temporal/p;)J

    move-result-wide v0

    return-wide v0

    .line 422
    :pswitch_0
    iget p1, v2, Lj$/time/chrono/y;->a:I

    int-to-long v0, p1

    return-wide v0

    .line 523
    :pswitch_1
    new-instance v0, Lj$/time/temporal/s;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/p;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 523
    throw v0

    :pswitch_2
    int-to-long v0, v1

    return-wide v0

    :pswitch_3
    const/4 p1, 0x1

    if-ne v1, p1, :cond_0

    .line 535
    invoke-virtual {v3}, Lj$/time/LocalDate;->K()I

    move-result v0

    .line 272
    iget-object v1, v2, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 535
    invoke-virtual {v1}, Lj$/time/LocalDate;->K()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 537
    :cond_0
    invoke-virtual {v3}, Lj$/time/LocalDate;->K()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 541
    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/p;->i(Lj$/time/temporal/m;)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s()J
    .locals 2

    .line 728
    iget-object v0, p0, Lj$/time/chrono/x;->a:Lj$/time/LocalDate;

    invoke-virtual {v0}, Lj$/time/LocalDate;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t(Lj$/time/LocalTime;)Lj$/time/chrono/e;
    .locals 1

    .line 174
    new-instance v0, Lj$/time/chrono/g;

    invoke-direct {v0, p0, p1}, Lj$/time/chrono/g;-><init>(Lj$/time/chrono/b;Lj$/time/LocalTime;)V

    return-object v0
.end method

.method public final z(JLj$/time/temporal/r;)Lj$/time/chrono/b;
    .locals 0

    .line 687
    invoke-super {p0, p1, p2, p3}, Lj$/time/chrono/d;->z(JLj$/time/temporal/r;)Lj$/time/chrono/b;

    move-result-object p1

    check-cast p1, Lj$/time/chrono/x;

    return-object p1
.end method
