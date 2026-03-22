package androidx.constraintlayout.core.parser;

import j$.util.Objects;
import java.io.PrintStream;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public class CLParser {
    static boolean sDebug = false;
    private String mContent;
    private boolean mHasComment = false;
    private int mLineNumber;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public CLParser(String str) {
        this.mContent = str;
    }

    private CLElement createElement(CLElement cLElement, int i, TYPE type, boolean z, char[] cArr) {
        CLElement allocate;
        if (sDebug) {
            PrintStream printStream = System.out;
            Objects.toString(type);
            char c = cArr[i];
            printStream.getClass();
        }
        switch (type.ordinal()) {
            case 1:
                allocate = CLObject.allocate(cArr);
                i++;
                break;
            case 2:
                allocate = CLArray.allocate(cArr);
                i++;
                break;
            case 3:
                allocate = CLNumber.allocate(cArr);
                break;
            case 4:
                allocate = CLString.allocate(cArr);
                break;
            case 5:
                allocate = CLKey.allocate(cArr);
                break;
            case 6:
                allocate = CLToken.allocate(cArr);
                break;
            default:
                allocate = null;
                break;
        }
        if (allocate == null) {
            return null;
        }
        allocate.setLine(this.mLineNumber);
        if (z) {
            allocate.setStart(i);
        }
        if (cLElement instanceof CLContainer) {
            allocate.setContainer((CLContainer) cLElement);
        }
        return allocate;
    }

    private CLElement getNextJsonElement(int i, char c, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
            if (c != '\"' && c != '\'') {
                if (c != '[') {
                    if (c != ']') {
                        if (c != '{') {
                            if (c != '}') {
                                switch (c) {
                                    case '+':
                                    case '-':
                                    case '.':
                                    case '0':
                                    case '1':
                                    case '2':
                                    case '3':
                                    case '4':
                                    case '5':
                                    case '6':
                                    case '7':
                                    case '8':
                                    case '9':
                                        return createElement(cLElement, i, TYPE.NUMBER, true, cArr);
                                    case ',':
                                    case ':':
                                        break;
                                    case '/':
                                        int i2 = i + 1;
                                        if (i2 >= cArr.length || cArr[i2] != '/') {
                                            return cLElement;
                                        }
                                        this.mHasComment = true;
                                        return cLElement;
                                    default:
                                        if ((cLElement instanceof CLContainer) && !(cLElement instanceof CLObject)) {
                                            CLElement createElement = createElement(cLElement, i, TYPE.TOKEN, true, cArr);
                                            CLToken cLToken = (CLToken) createElement;
                                            if (cLToken.validate(c, i)) {
                                                return createElement;
                                            }
                                            throw new CLParsingException("incorrect token <" + c + "> at line " + this.mLineNumber, cLToken);
                                        }
                                        return createElement(cLElement, i, TYPE.KEY, true, cArr);
                                }
                            }
                        } else {
                            return createElement(cLElement, i, TYPE.OBJECT, true, cArr);
                        }
                    }
                    cLElement.setEnd(i - 1);
                    CLElement container = cLElement.getContainer();
                    container.setEnd(i);
                    return container;
                }
                return createElement(cLElement, i, TYPE.ARRAY, true, cArr);
            } else if (cLElement instanceof CLObject) {
                return createElement(cLElement, i, TYPE.KEY, true, cArr);
            } else {
                return createElement(cLElement, i, TYPE.STRING, true, cArr);
            }
        }
        return cLElement;
    }

    public static CLObject parse(String str) throws CLParsingException {
        return new CLParser(str).parse();
    }

    public CLObject parse() throws CLParsingException {
        int i;
        char[] charArray = this.mContent.toCharArray();
        int length = charArray.length;
        int i2 = 1;
        this.mLineNumber = 1;
        boolean z = false;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                i3 = -1;
                break;
            }
            char c = charArray[i3];
            if (c == '{') {
                break;
            }
            if (c == '\n') {
                this.mLineNumber++;
            }
            i3++;
        }
        if (i3 != -1) {
            CLObject allocate = CLObject.allocate(charArray);
            allocate.setLine(this.mLineNumber);
            allocate.setStart(i3);
            int i4 = i3 + 1;
            CLObject cLObject = allocate;
            while (i4 < length) {
                char c2 = charArray[i4];
                if (c2 == '\n') {
                    this.mLineNumber += i2;
                }
                if (this.mHasComment) {
                    if (c2 == '\n') {
                        this.mHasComment = z;
                    } else {
                        i = i2;
                        i4++;
                        i2 = i;
                        z = false;
                    }
                }
                if (cLObject == null) {
                    break;
                }
                if (cLObject.isDone()) {
                    cLObject = getNextJsonElement(i4, c2, cLObject, charArray);
                } else if (cLObject instanceof CLObject) {
                    if (c2 == '}') {
                        cLObject.setEnd(i4 - 1);
                    } else {
                        cLObject = getNextJsonElement(i4, c2, cLObject, charArray);
                    }
                } else if (!(cLObject instanceof CLArray)) {
                    boolean z2 = cLObject instanceof CLString;
                    if (z2) {
                        long j = cLObject.mStart;
                        if (charArray[(int) j] == c2) {
                            cLObject.setStart(j + 1);
                            cLObject.setEnd(i4 - 1);
                        }
                    } else {
                        if (cLObject instanceof CLToken) {
                            CLToken cLToken = (CLToken) cLObject;
                            i = i2;
                            if (!cLToken.validate(c2, i4)) {
                                throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.mLineNumber, cLToken);
                            }
                        } else {
                            i = i2;
                        }
                        if ((cLObject instanceof CLKey) || z2) {
                            long j2 = cLObject.mStart;
                            char c3 = charArray[(int) j2];
                            if ((c3 == '\'' || c3 == '\"') && c3 == c2) {
                                cLObject.setStart(j2 + 1);
                                cLObject.setEnd(i4 - 1);
                            }
                        }
                        if (!cLObject.isDone() && (c2 == '}' || c2 == ']' || c2 == ',' || c2 == ' ' || c2 == '\t' || c2 == '\r' || c2 == '\n' || c2 == ':')) {
                            long j3 = i4 - 1;
                            cLObject.setEnd(j3);
                            if (c2 == '}' || c2 == ']') {
                                cLObject = cLObject.getContainer();
                                cLObject.setEnd(j3);
                                if (cLObject instanceof CLKey) {
                                    cLObject = cLObject.getContainer();
                                    cLObject.setEnd(j3);
                                }
                            }
                        }
                        if (cLObject.isDone() && (!(cLObject instanceof CLKey) || ((CLKey) cLObject).mElements.size() > 0)) {
                            cLObject = cLObject.getContainer();
                        }
                        i4++;
                        i2 = i;
                        z = false;
                    }
                } else if (c2 == ']') {
                    cLObject.setEnd(i4 - 1);
                } else {
                    cLObject = getNextJsonElement(i4, c2, cLObject, charArray);
                }
                i = i2;
                if (cLObject.isDone()) {
                    cLObject = cLObject.getContainer();
                }
                i4++;
                i2 = i;
                z = false;
            }
            while (cLObject != null && !cLObject.isDone()) {
                if (cLObject instanceof CLString) {
                    cLObject.setStart(((int) cLObject.mStart) + 1);
                }
                cLObject.setEnd(length - 1);
                cLObject = cLObject.getContainer();
            }
            if (sDebug) {
                PrintStream printStream = System.out;
                allocate.toJSON();
                printStream.getClass();
            }
            return allocate;
        }
        throw new CLParsingException("invalid json content", null);
    }
}
