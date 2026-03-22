.class public final Lj$/time/format/m;
.super Lj$/time/format/j;
.source "SourceFile"


# static fields
.field public static final h:Lj$/time/LocalDate;


# instance fields
.field public final g:Lj$/time/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    .line 2921
    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->N(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/format/m;->h:Lj$/time/LocalDate;

    return-void
.end method

.method public constructor <init>(Lj$/time/temporal/p;IILj$/time/LocalDate;I)V
    .locals 6

    .line 2971
    sget-object v4, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/p;IILj$/time/format/A;I)V

    .line 2973
    iput-object p4, v0, Lj$/time/format/m;->g:Lj$/time/LocalDate;

    return-void
.end method


# virtual methods
.method public final a(Lj$/time/format/u;J)J
    .locals 7

    .line 2978
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2980
    iget-object v2, p0, Lj$/time/format/m;->g:Lj$/time/LocalDate;

    if-eqz v2, :cond_0

    .line 238
    iget-object p1, p1, Lj$/time/format/u;->a:Lj$/time/temporal/m;

    .line 2981
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->I(Lj$/time/temporal/m;)Lj$/time/chrono/l;

    move-result-object p1

    .line 2982
    invoke-interface {p1, v2}, Lj$/time/chrono/l;->j(Lj$/time/temporal/m;)Lj$/time/chrono/b;

    move-result-object p1

    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    invoke-interface {p1, v2}, Lj$/time/temporal/m;->i(Lj$/time/temporal/p;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long v2, p1

    cmp-long p1, p2, v2

    .line 2984
    sget-object v4, Lj$/time/format/j;->f:[J

    if-ltz p1, :cond_1

    iget p1, p0, Lj$/time/format/j;->b:I

    aget-wide v5, v4, p1

    add-long/2addr v2, v5

    cmp-long p1, p2, v2

    if-gez p1, :cond_1

    .line 2986
    rem-long/2addr v0, v5

    return-wide v0

    .line 2989
    :cond_1
    iget p1, p0, Lj$/time/format/j;->c:I

    aget-wide p1, v4, p1

    rem-long/2addr v0, p1

    return-wide v0
.end method

.method public final b()Lj$/time/format/j;
    .locals 8

    .line 3034
    iget v0, p0, Lj$/time/format/j;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 3037
    :cond_0
    new-instance v2, Lj$/time/format/m;

    iget-object v6, p0, Lj$/time/format/m;->g:Lj$/time/LocalDate;

    const/4 v7, -0x1

    iget-object v3, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    iget v4, p0, Lj$/time/format/j;->b:I

    iget v5, p0, Lj$/time/format/j;->c:I

    invoke-direct/range {v2 .. v7}, Lj$/time/format/m;-><init>(Lj$/time/temporal/p;IILj$/time/LocalDate;I)V

    return-object v2
.end method

.method public final c(I)Lj$/time/format/j;
    .locals 6

    .line 3048
    new-instance v0, Lj$/time/format/m;

    iget v1, p0, Lj$/time/format/j;->e:I

    add-int v5, v1, p1

    iget v2, p0, Lj$/time/format/j;->b:I

    iget v3, p0, Lj$/time/format/j;->c:I

    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    iget-object v4, p0, Lj$/time/format/m;->g:Lj$/time/LocalDate;

    invoke-direct/range {v0 .. v5}, Lj$/time/format/m;-><init>(Lj$/time/temporal/p;IILj$/time/LocalDate;I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 3070
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lj$/time/format/m;->g:Lj$/time/LocalDate;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "defaultObj"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3070
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ReducedValue("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/p;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/j;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lj$/time/format/j;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
