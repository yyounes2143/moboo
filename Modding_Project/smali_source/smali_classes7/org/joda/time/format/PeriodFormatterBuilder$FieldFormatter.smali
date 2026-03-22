.class Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/joda/time/format/PeriodPrinter;
.implements Lorg/joda/time/format/PeriodParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldFormatter"
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I


# direct methods
.method public constructor <init>(IIIZI[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 3
    iput p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    iput p3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    iput-boolean p4, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    iput p5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    iput-object p6, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 8
    iput-object p7, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 9
    iput-object p8, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    iget v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 13
    iget v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    iget-boolean v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    iput-boolean v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 15
    iget v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    iput v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    iget-object v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 17
    iget-object v0, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    iput-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 18
    iget-object p1, p1, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$CompositeAffix;-><init>(Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;)V

    move-object p2, v0

    .line 20
    :cond_0
    iput-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;II)V
    .locals 0

    .line 1
    packed-switch p2, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :pswitch_0
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setMillis(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_1
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setSeconds(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_2
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setMinutes(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_3
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setHours(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_4
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setDays(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_5
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setWeeks(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_6
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setMonths(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_7
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritablePeriod;->setYears(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)I
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-lt p3, v0, :cond_0

    .line 4
    .line 5
    add-int/2addr p3, p2

    .line 6
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    if-gtz p3, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/lit8 v3, p3, -0x1

    .line 26
    .line 27
    const/16 v4, 0x2d

    .line 28
    .line 29
    if-ne v2, v4, :cond_3

    .line 30
    .line 31
    add-int/lit8 v3, p3, -0x2

    .line 32
    .line 33
    if-gez v3, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    add-int/lit8 p2, p2, 0x2

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v0, 0x1

    .line 43
    move v1, p2

    .line 44
    :cond_3
    add-int/lit8 v2, v2, -0x30

    .line 45
    .line 46
    :goto_0
    add-int/lit8 p2, v3, -0x1

    .line 47
    .line 48
    if-lez v3, :cond_4

    .line 49
    .line 50
    shl-int/lit8 p3, v2, 0x3

    .line 51
    .line 52
    shl-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    add-int/2addr p3, v2

    .line 55
    add-int/lit8 v2, v1, 0x1

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr p3, v1

    .line 62
    add-int/lit8 p3, p3, -0x30

    .line 63
    .line 64
    move v3, p2

    .line 65
    move v1, v2

    .line 66
    move v2, p3

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    if-eqz v0, :cond_5

    .line 69
    .line 70
    neg-int p1, v2

    .line 71
    return p1

    .line 72
    :cond_5
    return v2
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    return v0

    .line 6
    :pswitch_0
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return v0

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :pswitch_1
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :pswitch_2
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1

    .line 48
    :pswitch_3
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :pswitch_4
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :pswitch_5
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :pswitch_6
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :pswitch_7
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :pswitch_8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    return p1

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)J
    .locals 9

    .line 1
    iget v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    const-wide v1, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    invoke-virtual {p0, v0, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;I)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    return-wide v1

    .line 28
    :cond_1
    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    packed-switch v3, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    return-wide v1

    .line 34
    :pswitch_0
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-interface {p1, v4}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    int-to-long v5, v3

    .line 51
    const-wide/16 v7, 0x3e8

    .line 52
    .line 53
    mul-long/2addr v5, v7

    .line 54
    int-to-long v3, v4

    .line 55
    add-long/2addr v5, v3

    .line 56
    goto :goto_2

    .line 57
    :pswitch_1
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :goto_1
    int-to-long v5, v3

    .line 66
    goto :goto_2

    .line 67
    :pswitch_2
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    goto :goto_1

    .line 76
    :pswitch_3
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    goto :goto_1

    .line 85
    :pswitch_4
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    goto :goto_1

    .line 94
    :pswitch_5
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    goto :goto_1

    .line 103
    :pswitch_6
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    goto :goto_1

    .line 112
    :pswitch_7
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    goto :goto_1

    .line 121
    :pswitch_8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->get(Lorg/joda/time/DurationFieldType;)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    goto :goto_1

    .line 130
    :goto_2
    const-wide/16 v3, 0x0

    .line 131
    .line 132
    cmp-long v3, v5, v3

    .line 133
    .line 134
    if-nez v3, :cond_9

    .line 135
    .line 136
    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 137
    .line 138
    const/16 v4, 0x9

    .line 139
    .line 140
    const/4 v7, 0x1

    .line 141
    if-eq v3, v7, :cond_6

    .line 142
    .line 143
    const/4 v8, 0x2

    .line 144
    if-eq v3, v8, :cond_3

    .line 145
    .line 146
    const/4 p1, 0x5

    .line 147
    if-eq v3, p1, :cond_2

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_2
    return-wide v1

    .line 151
    :cond_3
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_5

    .line 156
    .line 157
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 158
    .line 159
    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 160
    .line 161
    aget-object p1, p1, v3

    .line 162
    .line 163
    if-ne p1, p0, :cond_5

    .line 164
    .line 165
    add-int/2addr v3, v7

    .line 166
    :goto_3
    if-gt v3, v4, :cond_9

    .line 167
    .line 168
    invoke-virtual {p0, v0, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;I)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_4

    .line 173
    .line 174
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 175
    .line 176
    aget-object p1, p1, v3

    .line 177
    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    return-wide v1

    .line 181
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_5
    return-wide v1

    .line 185
    :cond_6
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_8

    .line 190
    .line 191
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 192
    .line 193
    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 194
    .line 195
    aget-object p1, p1, v3

    .line 196
    .line 197
    if-ne p1, p0, :cond_8

    .line 198
    .line 199
    const/16 p1, 0x8

    .line 200
    .line 201
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 206
    .line 207
    if-ltz p1, :cond_9

    .line 208
    .line 209
    if-gt p1, v4, :cond_9

    .line 210
    .line 211
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;I)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_7

    .line 216
    .line 217
    iget-object v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;

    .line 218
    .line 219
    aget-object v3, v3, p1

    .line 220
    .line 221
    if-eqz v3, :cond_7

    .line 222
    .line 223
    :cond_8
    return-wide v1

    .line 224
    :cond_9
    :goto_4
    return-wide v5

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    array-length v2, p1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 14
    .line 15
    aget-object v4, p1, v3

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    iget-object v5, v4, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 26
    .line 27
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v4, v4, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 31
    .line 32
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Set;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-interface {p1, v1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Set;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)I
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide v0, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-static {p1, p2}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(J)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    if-lt v1, v2, :cond_3

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    cmp-long v3, p1, v1

    .line 35
    .line 36
    if-gez v3, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x5

    .line 39
    :goto_0
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v3, 0x4

    .line 45
    goto :goto_0

    .line 46
    :goto_1
    add-int/lit8 v3, v0, 0x1

    .line 47
    .line 48
    iget v4, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 49
    .line 50
    const/16 v5, 0x9

    .line 51
    .line 52
    const-wide/16 v6, 0x3e8

    .line 53
    .line 54
    if-ne v4, v5, :cond_2

    .line 55
    .line 56
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    rem-long/2addr v4, v6

    .line 61
    cmp-long v1, v4, v1

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    add-int/lit8 v0, v0, -0x3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move v0, v3

    .line 69
    :goto_2
    div-long/2addr p1, v6

    .line 70
    :cond_3
    long-to-int p1, p1

    .line 71
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-interface {p2, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    add-int/2addr v0, p2

    .line 80
    :cond_4
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 81
    .line 82
    if-eqz p2, :cond_5

    .line 83
    .line 84
    invoke-interface {p2, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-int/2addr v0, p1

    .line 89
    :cond_5
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePeriod;Ljava/util/Locale;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, p2, v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    long-to-int v0, p2

    .line 16
    iget v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    const-wide/16 v2, 0x3e8

    .line 19
    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    if-lt v1, v4, :cond_1

    .line 23
    .line 24
    div-long v0, p2, v2

    .line 25
    .line 26
    long-to-int v0, v0

    .line 27
    :cond_1
    iget-object v1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {v1, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    if-gt v5, v6, :cond_3

    .line 42
    .line 43
    invoke-static {p1, v0}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p1, v0, v5}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;II)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget v5, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 51
    .line 52
    if-lt v5, v4, :cond_6

    .line 53
    .line 54
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    rem-long/2addr v5, v2

    .line 59
    long-to-int v2, v5

    .line 60
    iget v3, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 61
    .line 62
    if-eq v3, v4, :cond_4

    .line 63
    .line 64
    if-lez v2, :cond_6

    .line 65
    .line 66
    :cond_4
    const-wide/16 v3, 0x0

    .line 67
    .line 68
    cmp-long v3, p2, v3

    .line 69
    .line 70
    if-gez v3, :cond_5

    .line 71
    .line 72
    const-wide/16 v3, -0x3e8

    .line 73
    .line 74
    cmp-long p2, p2, v3

    .line 75
    .line 76
    if-lez p2, :cond_5

    .line 77
    .line 78
    const/16 p2, 0x2d

    .line 79
    .line 80
    invoke-virtual {p1, v1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    :cond_5
    const/16 p2, 0x2e

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    const/4 p2, 0x3

    .line 89
    invoke-static {p1, v2, p2}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;II)V

    .line 90
    .line 91
    .line 92
    :cond_6
    iget-object p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 93
    .line 94
    if-eqz p2, :cond_7

    .line 95
    .line 96
    invoke-interface {p2, p1, v0}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;I)V

    .line 97
    .line 98
    .line 99
    :cond_7
    :goto_1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;ILjava/util/Locale;)I
    .locals 2

    .line 1
    const/4 p3, 0x0

    .line 2
    if-gtz p2, :cond_0

    .line 3
    .line 4
    return p3

    .line 5
    :cond_0
    iget p2, p0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePeriod;)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    const-wide v0, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long p1, p1, v0

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return p3

    .line 25
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;ILjava/util/Locale;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget v4, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    if-ne v4, v5, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-lt v3, v5, :cond_2

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    not-int v1, v3

    .line 26
    return v1

    .line 27
    :cond_1
    return v3

    .line 28
    :cond_2
    iget-object v5, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 29
    .line 30
    if-eqz v5, :cond_5

    .line 31
    .line 32
    invoke-interface {v5, v2, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ltz v3, :cond_3

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    if-nez v4, :cond_4

    .line 41
    .line 42
    not-int v1, v3

    .line 43
    return v1

    .line 44
    :cond_4
    return v3

    .line 45
    :cond_5
    :goto_1
    iget-object v5, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 46
    .line 47
    const/4 v8, -0x1

    .line 48
    if-eqz v5, :cond_8

    .line 49
    .line 50
    if-nez v4, :cond_8

    .line 51
    .line 52
    invoke-interface {v5, v2, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-ltz v5, :cond_6

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_6
    if-nez v4, :cond_7

    .line 61
    .line 62
    not-int v1, v5

    .line 63
    return v1

    .line 64
    :cond_7
    return v5

    .line 65
    :cond_8
    move v5, v8

    .line 66
    :goto_2
    if-nez v4, :cond_9

    .line 67
    .line 68
    invoke-interface {v1}, Lorg/joda/time/ReadablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget v9, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 73
    .line 74
    invoke-virtual {v0, v4, v9}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;I)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_9

    .line 79
    .line 80
    return v3

    .line 81
    :cond_9
    if-lez v5, :cond_a

    .line 82
    .line 83
    iget v4, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 84
    .line 85
    sub-int v9, v5, v3

    .line 86
    .line 87
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    goto :goto_3

    .line 92
    :cond_a
    iget v4, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    sub-int/2addr v9, v3

    .line 99
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    :goto_3
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v11, 0x0

    .line 106
    :goto_4
    if-ge v9, v4, :cond_14

    .line 107
    .line 108
    add-int v14, v3, v9

    .line 109
    .line 110
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v15

    .line 114
    const/16 p4, 0x1

    .line 115
    .line 116
    const/16 v7, 0x39

    .line 117
    .line 118
    const/16 v6, 0x30

    .line 119
    .line 120
    if-nez v9, :cond_f

    .line 121
    .line 122
    const/16 v12, 0x2d

    .line 123
    .line 124
    if-eq v15, v12, :cond_b

    .line 125
    .line 126
    const/16 v13, 0x2b

    .line 127
    .line 128
    if-ne v15, v13, :cond_f

    .line 129
    .line 130
    :cond_b
    iget-boolean v13, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 131
    .line 132
    if-nez v13, :cond_f

    .line 133
    .line 134
    if-ne v15, v12, :cond_c

    .line 135
    .line 136
    move/from16 v11, p4

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_c
    const/4 v11, 0x0

    .line 140
    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 141
    .line 142
    if-ge v12, v4, :cond_15

    .line 143
    .line 144
    add-int/lit8 v14, v14, 0x1

    .line 145
    .line 146
    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    if-lt v13, v6, :cond_15

    .line 151
    .line 152
    if-le v13, v7, :cond_d

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_d
    if-eqz v11, :cond_e

    .line 156
    .line 157
    move v9, v12

    .line 158
    goto :goto_6

    .line 159
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    sub-int/2addr v6, v3

    .line 168
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    goto :goto_4

    .line 173
    :cond_f
    if-lt v15, v6, :cond_10

    .line 174
    .line 175
    if-gt v15, v7, :cond_10

    .line 176
    .line 177
    move/from16 v10, p4

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_10
    const/16 v6, 0x2e

    .line 181
    .line 182
    if-eq v15, v6, :cond_11

    .line 183
    .line 184
    const/16 v6, 0x2c

    .line 185
    .line 186
    if-ne v15, v6, :cond_15

    .line 187
    .line 188
    :cond_11
    iget v6, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 189
    .line 190
    const/16 v7, 0x8

    .line 191
    .line 192
    if-eq v6, v7, :cond_12

    .line 193
    .line 194
    const/16 v7, 0x9

    .line 195
    .line 196
    if-ne v6, v7, :cond_15

    .line 197
    .line 198
    :cond_12
    if-ltz v8, :cond_13

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 202
    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    sub-int/2addr v6, v3

    .line 210
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    move v8, v14

    .line 215
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_14
    const/16 p4, 0x1

    .line 219
    .line 220
    :cond_15
    :goto_8
    if-nez v10, :cond_16

    .line 221
    .line 222
    not-int v1, v3

    .line 223
    return v1

    .line 224
    :cond_16
    if-ltz v5, :cond_17

    .line 225
    .line 226
    add-int v4, v3, v9

    .line 227
    .line 228
    if-eq v4, v5, :cond_17

    .line 229
    .line 230
    return v3

    .line 231
    :cond_17
    iget v4, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 232
    .line 233
    const/16 v7, 0x8

    .line 234
    .line 235
    if-eq v4, v7, :cond_18

    .line 236
    .line 237
    const/16 v7, 0x9

    .line 238
    .line 239
    if-eq v4, v7, :cond_18

    .line 240
    .line 241
    invoke-virtual {v0, v2, v3, v9}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    invoke-virtual {v0, v1, v4, v5}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;II)V

    .line 246
    .line 247
    .line 248
    goto :goto_b

    .line 249
    :cond_18
    const/4 v4, 0x7

    .line 250
    const/4 v5, 0x6

    .line 251
    if-gez v8, :cond_19

    .line 252
    .line 253
    invoke-virtual {v0, v2, v3, v9}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)I

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    invoke-virtual {v0, v1, v5, v6}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;II)V

    .line 258
    .line 259
    .line 260
    const/4 v6, 0x0

    .line 261
    invoke-virtual {v0, v1, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;II)V

    .line 262
    .line 263
    .line 264
    goto :goto_b

    .line 265
    :cond_19
    const/4 v6, 0x0

    .line 266
    sub-int v7, v8, v3

    .line 267
    .line 268
    add-int/lit8 v7, v7, -0x1

    .line 269
    .line 270
    invoke-virtual {v0, v2, v3, v7}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    invoke-virtual {v0, v1, v5, v7}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;II)V

    .line 275
    .line 276
    .line 277
    add-int v5, v3, v9

    .line 278
    .line 279
    sub-int/2addr v5, v8

    .line 280
    if-gtz v5, :cond_1a

    .line 281
    .line 282
    goto :goto_a

    .line 283
    :cond_1a
    const/4 v6, 0x3

    .line 284
    if-lt v5, v6, :cond_1b

    .line 285
    .line 286
    invoke-virtual {v0, v2, v8, v6}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    move v6, v5

    .line 291
    goto :goto_9

    .line 292
    :cond_1b
    invoke-virtual {v0, v2, v8, v5}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    move/from16 v8, p4

    .line 297
    .line 298
    if-ne v5, v8, :cond_1c

    .line 299
    .line 300
    mul-int/lit8 v6, v6, 0x64

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_1c
    mul-int/lit8 v6, v6, 0xa

    .line 304
    .line 305
    :goto_9
    if-nez v11, :cond_1d

    .line 306
    .line 307
    if-gez v7, :cond_1e

    .line 308
    .line 309
    :cond_1d
    neg-int v6, v6

    .line 310
    :cond_1e
    :goto_a
    invoke-virtual {v0, v1, v4, v6}, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;II)V

    .line 311
    .line 312
    .line 313
    :goto_b
    add-int/2addr v3, v9

    .line 314
    if-ltz v3, :cond_1f

    .line 315
    .line 316
    iget-object v1, v0, Lorg/joda/time/format/PeriodFormatterBuilder$FieldFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    .line 317
    .line 318
    if-eqz v1, :cond_1f

    .line 319
    .line 320
    invoke-interface {v1, v2, v3}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    return v1

    .line 325
    :cond_1f
    return v3
.end method
