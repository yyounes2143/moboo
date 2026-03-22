.class public final Lj$/time/temporal/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final h:Lj$/time/temporal/h;

.field private static final serialVersionUID:J = -0x1056d36d74f0f639L


# instance fields
.field public final a:Lj$/time/d;

.field public final b:I

.field public final transient c:Lj$/time/temporal/u;

.field public final transient d:Lj$/time/temporal/u;

.field public final transient e:Lj$/time/temporal/u;

.field public final transient f:Lj$/time/temporal/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 196
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/temporal/v;->g:Lj$/util/concurrent/ConcurrentHashMap;

    .line 210
    new-instance v0, Lj$/time/temporal/v;

    sget-object v2, Lj$/time/d;->MONDAY:Lj$/time/d;

    invoke-direct {v0, v2, v1}, Lj$/time/temporal/v;-><init>(Lj$/time/d;I)V

    .line 219
    sget-object v0, Lj$/time/d;->SUNDAY:Lj$/time/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj$/time/temporal/v;->a(Lj$/time/d;I)Lj$/time/temporal/v;

    .line 237
    sget-object v0, Lj$/time/temporal/i;->d:Lj$/time/temporal/h;

    sput-object v0, Lj$/time/temporal/v;->h:Lj$/time/temporal/h;

    return-void
.end method

.method public constructor <init>(Lj$/time/d;I)V
    .locals 6

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    new-instance v0, Lj$/time/temporal/u;

    sget-object v3, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    sget-object v5, Lj$/time/temporal/u;->f:Lj$/time/temporal/t;

    const-string v1, "DayOfWeek"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/u;-><init>(Ljava/lang/String;Lj$/time/temporal/v;Lj$/time/temporal/r;Lj$/time/temporal/r;Lj$/time/temporal/t;)V

    move-object v3, v4

    .line 255
    iput-object v0, p0, Lj$/time/temporal/v;->c:Lj$/time/temporal/u;

    .line 700
    new-instance v0, Lj$/time/temporal/u;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    sget-object v5, Lj$/time/temporal/u;->g:Lj$/time/temporal/t;

    const-string v1, "WeekOfMonth"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/u;-><init>(Ljava/lang/String;Lj$/time/temporal/v;Lj$/time/temporal/r;Lj$/time/temporal/r;Lj$/time/temporal/t;)V

    .line 259
    iput-object v0, p0, Lj$/time/temporal/v;->d:Lj$/time/temporal/u;

    .line 709
    new-instance v0, Lj$/time/temporal/u;

    .line 718
    new-instance v0, Lj$/time/temporal/u;

    sget-object v4, Lj$/time/temporal/i;->d:Lj$/time/temporal/h;

    sget-object v5, Lj$/time/temporal/u;->i:Lj$/time/temporal/t;

    const-string v1, "WeekOfWeekBasedYear"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/u;-><init>(Ljava/lang/String;Lj$/time/temporal/v;Lj$/time/temporal/r;Lj$/time/temporal/r;Lj$/time/temporal/t;)V

    move-object v3, v4

    .line 271
    iput-object v0, p0, Lj$/time/temporal/v;->e:Lj$/time/temporal/u;

    .line 727
    new-instance v0, Lj$/time/temporal/u;

    sget-object v4, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 669
    iget-object v5, v1, Lj$/time/temporal/a;->b:Lj$/time/temporal/t;

    .line 727
    const-string v1, "WeekBasedYear"

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj$/time/temporal/u;-><init>(Ljava/lang/String;Lj$/time/temporal/v;Lj$/time/temporal/r;Lj$/time/temporal/r;Lj$/time/temporal/t;)V

    .line 279
    iput-object v0, p0, Lj$/time/temporal/v;->f:Lj$/time/temporal/u;

    .line 350
    const-string v0, "firstDayOfWeek"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    .line 354
    iput-object p1, p0, Lj$/time/temporal/v;->a:Lj$/time/d;

    .line 355
    iput p2, p0, Lj$/time/temporal/v;->b:I

    return-void

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lj$/time/d;I)Lj$/time/temporal/v;
    .locals 3

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    sget-object v1, Lj$/time/temporal/v;->g:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/v;

    if-nez v2, :cond_0

    .line 334
    new-instance v2, Lj$/time/temporal/v;

    invoke-direct {v2, p0, p1}, Lj$/time/temporal/v;-><init>(Lj$/time/d;I)V

    .line 335
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/v;

    return-object p0

    :cond_0
    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 371
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 372
    iget-object p1, p0, Lj$/time/temporal/v;->a:Lj$/time/d;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 376
    iget v0, p0, Lj$/time/temporal/v;->b:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x7

    if-gt v0, p1, :cond_0

    return-void

    .line 377
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Minimal number of days is invalid"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "firstDayOfWeek is null"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 390
    :try_start_0
    iget-object v0, p0, Lj$/time/temporal/v;->a:Lj$/time/d;

    iget v1, p0, Lj$/time/temporal/v;->b:I

    invoke-static {v0, v1}, Lj$/time/temporal/v;->a(Lj$/time/d;I)Lj$/time/temporal/v;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 392
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid serialized WeekFields: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 645
    :cond_0
    instance-of v1, p1, Lj$/time/temporal/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {p0}, Lj$/time/temporal/v;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 658
    iget-object v0, p0, Lj$/time/temporal/v;->a:Lj$/time/d;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lj$/time/temporal/v;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WeekFields["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj$/time/temporal/v;->a:Lj$/time/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj$/time/temporal/v;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
