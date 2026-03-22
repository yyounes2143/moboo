.class Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;
.super Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeAffix"
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 7
    .line 8
    new-instance p2, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_1

    .line 21
    .line 22
    aget-object v3, p1, v2

    .line 23
    .line 24
    iget-object v4, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 25
    .line 26
    invoke-interface {v4}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    array-length v5, v4

    .line 31
    move v6, v1

    .line 32
    :goto_1
    if-ge v6, v5, :cond_0

    .line 33
    .line 34
    aget-object v7, v4, v6

    .line 35
    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    new-array p1, p1, [Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {p2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, [Ljava/lang/String;

    .line 71
    .line 72
    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 10
    .line 11
    invoke-interface {v1, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v1, v0

    .line 22
    invoke-virtual {p0, v1, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    not-int p1, p2

    .line 29
    return p1

    .line 30
    :cond_0
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 12
    .line 13
    invoke-interface {v2, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {v1, p1, v2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 24
    .line 25
    invoke-interface {v2, p1, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sub-int/2addr v2, v0

    .line 30
    invoke-virtual {p0, v2, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    :cond_0
    if-lez v0, :cond_1

    .line 37
    .line 38
    return v0

    .line 39
    :cond_1
    return v1

    .line 40
    :cond_2
    not-int p1, p2

    .line 41
    return p1
.end method
