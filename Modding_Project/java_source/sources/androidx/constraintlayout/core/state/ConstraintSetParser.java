package androidx.constraintlayout.core.state;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLArray;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParser;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.parser.CLString;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.state.helpers.BarrierReference;
import androidx.constraintlayout.core.state.helpers.GridReference;
import androidx.constraintlayout.core.state.helpers.GuidelineReference;
import com.applovin.sdk.AppLovinMediationProvider;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public class ConstraintSetParser {
    private static final boolean PARSER_DEBUG = false;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class DesignElement {
        String mId;
        HashMap<String, String> mParams;
        String mType;

        public DesignElement(String str, String str2, HashMap<String, String> hashMap) {
            this.mId = str;
            this.mType = str2;
            this.mParams = hashMap;
        }

        public String getId() {
            return this.mId;
        }

        public HashMap<String, String> getParams() {
            return this.mParams;
        }

        public String getType() {
            return this.mType;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class FiniteGenerator implements GeneratedValue {
        float mFrom;
        float mInitial;
        float mMax;
        String mPostfix;
        String mPrefix;
        float mStep;
        float mTo;
        boolean mStop = false;
        float mCurrent = 0.0f;

        public FiniteGenerator(float f, float f2, float f3, String str, String str2) {
            this.mFrom = f;
            this.mTo = f2;
            this.mStep = f3;
            this.mPrefix = str == null ? "" : str;
            this.mPostfix = str2 == null ? "" : str2;
            this.mMax = f2;
            this.mInitial = f;
        }

        public ArrayList<String> array() {
            ArrayList<String> arrayList = new ArrayList<>();
            int i = (int) this.mInitial;
            int i2 = (int) this.mMax;
            int i3 = i;
            while (i <= i2) {
                arrayList.add(this.mPrefix + i3 + this.mPostfix);
                i3 += (int) this.mStep;
                i++;
            }
            return arrayList;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            float f = this.mCurrent;
            if (f >= this.mMax) {
                this.mStop = true;
            }
            if (!this.mStop) {
                this.mCurrent = f + this.mStep;
            }
            return this.mCurrent;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface GeneratedValue {
        float value();
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class Generator implements GeneratedValue {
        float mCurrent;
        float mIncrementBy;
        float mStart;
        boolean mStop = false;

        public Generator(float f, float f2) {
            this.mStart = f;
            this.mIncrementBy = f2;
            this.mCurrent = f;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            if (!this.mStop) {
                this.mCurrent += this.mIncrementBy;
            }
            return this.mCurrent;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class LayoutVariables {
        HashMap<String, Integer> mMargins = new HashMap<>();
        HashMap<String, GeneratedValue> mGenerators = new HashMap<>();
        HashMap<String, ArrayList<String>> mArrayIds = new HashMap<>();

        public float get(Object obj) {
            if (obj instanceof CLString) {
                String content = ((CLString) obj).content();
                if (this.mGenerators.containsKey(content)) {
                    return this.mGenerators.get(content).value();
                }
                if (this.mMargins.containsKey(content)) {
                    return this.mMargins.get(content).floatValue();
                }
                return 0.0f;
            } else if (obj instanceof CLNumber) {
                return ((CLNumber) obj).getFloat();
            } else {
                return 0.0f;
            }
        }

        public ArrayList<String> getList(String str) {
            if (this.mArrayIds.containsKey(str)) {
                return this.mArrayIds.get(str);
            }
            return null;
        }

        public void put(String str, int i) {
            this.mMargins.put(str, Integer.valueOf(i));
        }

        public void putOverride(String str, float f) {
            this.mGenerators.put(str, new OverrideValue(f));
        }

        public void put(String str, float f, float f2) {
            if (this.mGenerators.containsKey(str) && (this.mGenerators.get(str) instanceof OverrideValue)) {
                return;
            }
            this.mGenerators.put(str, new Generator(f, f2));
        }

        public void put(String str, float f, float f2, float f3, String str2, String str3) {
            if (this.mGenerators.containsKey(str) && (this.mGenerators.get(str) instanceof OverrideValue)) {
                return;
            }
            FiniteGenerator finiteGenerator = new FiniteGenerator(f, f2, f3, str2, str3);
            this.mGenerators.put(str, finiteGenerator);
            this.mArrayIds.put(str, finiteGenerator.array());
        }

        public void put(String str, ArrayList<String> arrayList) {
            this.mArrayIds.put(str, arrayList);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public enum MotionLayoutDebugFlags {
        NONE,
        SHOW_ALL,
        UNKNOWN
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class OverrideValue implements GeneratedValue {
        float mValue;

        public OverrideValue(float f) {
            this.mValue = f;
        }

        @Override // androidx.constraintlayout.core.state.ConstraintSetParser.GeneratedValue
        public float value() {
            return this.mValue;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0168, code lost:
        if (r8.equals("visible") == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applyAttribute(androidx.constraintlayout.core.state.State r8, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r9, androidx.constraintlayout.core.state.ConstraintReference r10, androidx.constraintlayout.core.parser.CLObject r11, java.lang.String r12) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instructions count: 908
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.applyAttribute(androidx.constraintlayout.core.state.State, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.parser.CLObject, java.lang.String):void");
    }

    private static int indexOf(String str, String... strArr) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public static String lookForType(CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        int size = names.size();
        int i = 0;
        while (i < size) {
            String str = names.get(i);
            i++;
            if (str.equals("type")) {
                return cLObject.getString("type");
            }
        }
        return null;
    }

    public static void override(CLObject cLObject, String str, CLObject cLObject2) throws CLParsingException {
        if (!cLObject.has(str)) {
            cLObject.put(str, cLObject2);
            return;
        }
        CLObject object = cLObject.getObject(str);
        ArrayList<String> names = cLObject2.names();
        int size = names.size();
        int i = 0;
        while (i < size) {
            String str2 = names.get(i);
            i++;
            String str3 = str2;
            if (!str3.equals("clear")) {
                object.put(str3, cLObject2.get(str3));
            } else {
                CLArray array = cLObject2.getArray("clear");
                for (int i2 = 0; i2 < array.size(); i2++) {
                    String stringOrNull = array.getStringOrNull(i2);
                    if (stringOrNull != null) {
                        char c = 65535;
                        switch (stringOrNull.hashCode()) {
                            case -1727069561:
                                if (stringOrNull.equals("transforms")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case -1606703562:
                                if (stringOrNull.equals("constraints")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 414334925:
                                if (stringOrNull.equals("dimensions")) {
                                    c = 2;
                                    break;
                                }
                                break;
                        }
                        switch (c) {
                            case 0:
                                object.remove("visibility");
                                object.remove("alpha");
                                object.remove("pivotX");
                                object.remove("pivotY");
                                object.remove("rotationX");
                                object.remove("rotationY");
                                object.remove("rotationZ");
                                object.remove("scaleX");
                                object.remove("scaleY");
                                object.remove("translationX");
                                object.remove("translationY");
                                break;
                            case 1:
                                object.remove("start");
                                object.remove("end");
                                object.remove("top");
                                object.remove("bottom");
                                object.remove("baseline");
                                object.remove("center");
                                object.remove("centerHorizontally");
                                object.remove("centerVertically");
                                break;
                            case 2:
                                object.remove("width");
                                object.remove("height");
                                break;
                            default:
                                object.remove(stringOrNull);
                                break;
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void parseBarrier(State state, String str, CLObject cLObject) throws CLParsingException {
        boolean z;
        char c;
        boolean isRtl = state.isRtl();
        BarrierReference barrier = state.barrier(str, State.Direction.END);
        ArrayList<String> names = cLObject.names();
        if (names != null) {
            int size = names.size();
            int i = 0;
            while (i < size) {
                String str2 = names.get(i);
                i++;
                String str3 = str2;
                str3.getClass();
                switch (str3.hashCode()) {
                    case -1081309778:
                        if (str3.equals("margin")) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case -962590849:
                        if (str3.equals("direction")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -567445985:
                        if (str3.equals("contains")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                switch (z) {
                    case false:
                        float floatOrNaN = cLObject.getFloatOrNaN(str3);
                        if (Float.isNaN(floatOrNaN)) {
                            break;
                        } else {
                            barrier.margin(Float.valueOf(toPix(state, floatOrNaN)));
                            break;
                        }
                    case true:
                        String string = cLObject.getString(str3);
                        string.getClass();
                        switch (string.hashCode()) {
                            case -1383228885:
                                if (string.equals("bottom")) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 100571:
                                if (string.equals("end")) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 115029:
                                if (string.equals("top")) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 3317767:
                                if (string.equals("left")) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 108511772:
                                if (string.equals("right")) {
                                    c = 4;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 109757538:
                                if (string.equals("start")) {
                                    c = 5;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        switch (c) {
                            case 0:
                                barrier.setBarrierDirection(State.Direction.BOTTOM);
                                continue;
                            case 1:
                                if (!isRtl) {
                                    barrier.setBarrierDirection(State.Direction.RIGHT);
                                    break;
                                } else {
                                    barrier.setBarrierDirection(State.Direction.LEFT);
                                    continue;
                                }
                            case 2:
                                barrier.setBarrierDirection(State.Direction.TOP);
                                continue;
                            case 3:
                                barrier.setBarrierDirection(State.Direction.LEFT);
                                continue;
                            case 4:
                                barrier.setBarrierDirection(State.Direction.RIGHT);
                                continue;
                            case 5:
                                if (!isRtl) {
                                    barrier.setBarrierDirection(State.Direction.LEFT);
                                    break;
                                } else {
                                    barrier.setBarrierDirection(State.Direction.RIGHT);
                                    continue;
                                }
                        }
                    case true:
                        CLArray arrayOrNull = cLObject.getArrayOrNull(str3);
                        if (arrayOrNull != null) {
                            for (int i2 = 0; i2 < arrayOrNull.size(); i2++) {
                                barrier.add(state.constraints(arrayOrNull.get(i2).content()));
                            }
                            break;
                        } else {
                            break;
                        }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0092 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseChain(int r8, androidx.constraintlayout.core.state.State r9, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r10, androidx.constraintlayout.core.parser.CLArray r11) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            r0 = 0
            r1 = 1
            if (r8 != 0) goto L9
            androidx.constraintlayout.core.state.helpers.HorizontalChainReference r8 = r9.horizontalChain()
            goto Ld
        L9:
            androidx.constraintlayout.core.state.helpers.VerticalChainReference r8 = r9.verticalChain()
        Ld:
            androidx.constraintlayout.core.parser.CLElement r2 = r11.get(r1)
            boolean r3 = r2 instanceof androidx.constraintlayout.core.parser.CLArray
            if (r3 == 0) goto Lac
            androidx.constraintlayout.core.parser.CLArray r2 = (androidx.constraintlayout.core.parser.CLArray) r2
            int r3 = r2.size()
            if (r3 >= r1) goto L1f
            goto Lac
        L1f:
            r3 = r0
        L20:
            int r4 = r2.size()
            if (r3 >= r4) goto L33
            java.lang.String r4 = r2.getString(r3)
            java.lang.Object[] r5 = new java.lang.Object[r1]
            r5[r0] = r4
            r8.add(r5)
            int r3 = r3 + r1
            goto L20
        L33:
            int r2 = r11.size()
            r3 = 2
            if (r2 <= r3) goto Lac
            androidx.constraintlayout.core.parser.CLElement r11 = r11.get(r3)
            boolean r2 = r11 instanceof androidx.constraintlayout.core.parser.CLObject
            if (r2 != 0) goto L43
            goto Lac
        L43:
            androidx.constraintlayout.core.parser.CLObject r11 = (androidx.constraintlayout.core.parser.CLObject) r11
            java.util.ArrayList r2 = r11.names()
            int r3 = r2.size()
            r4 = r0
        L4e:
            if (r4 >= r3) goto Lac
            java.lang.Object r5 = r2.get(r4)
            int r4 = r4 + r1
            java.lang.String r5 = (java.lang.String) r5
            r5.getClass()
            java.lang.String r6 = "style"
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto L66
            parseConstraint(r9, r10, r11, r8, r5)
            goto L4e
        L66:
            androidx.constraintlayout.core.parser.CLElement r5 = r11.get(r5)
            boolean r6 = r5 instanceof androidx.constraintlayout.core.parser.CLArray
            if (r6 == 0) goto L83
            r6 = r5
            androidx.constraintlayout.core.parser.CLArray r6 = (androidx.constraintlayout.core.parser.CLArray) r6
            int r7 = r6.size()
            if (r7 <= r1) goto L83
            java.lang.String r5 = r6.getString(r0)
            float r6 = r6.getFloat(r1)
            r8.bias(r6)
            goto L87
        L83:
            java.lang.String r5 = r5.content()
        L87:
            r5.getClass()
            java.lang.String r6 = "packed"
            boolean r6 = r5.equals(r6)
            if (r6 != 0) goto La6
            java.lang.String r6 = "spread_inside"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto La0
            androidx.constraintlayout.core.state.State$Chain r5 = androidx.constraintlayout.core.state.State.Chain.SPREAD
            r8.style(r5)
            goto L4e
        La0:
            androidx.constraintlayout.core.state.State$Chain r5 = androidx.constraintlayout.core.state.State.Chain.SPREAD_INSIDE
            r8.style(r5)
            goto L4e
        La6:
            androidx.constraintlayout.core.state.State$Chain r5 = androidx.constraintlayout.core.state.State.Chain.PACKED
            r8.style(r5)
            goto L4e
        Lac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseChain(int, androidx.constraintlayout.core.state.State, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLArray):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void parseChainType(java.lang.String r20, androidx.constraintlayout.core.state.State r21, java.lang.String r22, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r23, androidx.constraintlayout.core.parser.CLObject r24) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseChainType(java.lang.String, androidx.constraintlayout.core.state.State, java.lang.String, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLObject):void");
    }

    public static long parseColorString(String str) {
        if (str.startsWith("#")) {
            String substring = str.substring(1);
            if (substring.length() == 6) {
                substring = "FF" + substring;
            }
            return Long.parseLong(substring, 16);
        }
        return -1L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseConstraint(androidx.constraintlayout.core.state.State r21, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r22, androidx.constraintlayout.core.parser.CLObject r23, androidx.constraintlayout.core.state.ConstraintReference r24, java.lang.String r25) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instructions count: 930
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseConstraint(androidx.constraintlayout.core.state.State, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLObject, androidx.constraintlayout.core.state.ConstraintReference, java.lang.String):void");
    }

    public static void parseConstraintSets(CoreMotionScene coreMotionScene, CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        if (names != null) {
            int size = names.size();
            int i = 0;
            while (i < size) {
                String str = names.get(i);
                i++;
                String str2 = str;
                CLObject object = cLObject.getObject(str2);
                String stringOrNull = object.getStringOrNull("Extends");
                if (stringOrNull != null && !stringOrNull.isEmpty()) {
                    String constraintSet = coreMotionScene.getConstraintSet(stringOrNull);
                    if (constraintSet != null) {
                        CLObject parse = CLParser.parse(constraintSet);
                        ArrayList<String> names2 = object.names();
                        if (names2 != null) {
                            int size2 = names2.size();
                            int i2 = 0;
                            while (i2 < size2) {
                                String str3 = names2.get(i2);
                                i2++;
                                String str4 = str3;
                                CLElement cLElement = object.get(str4);
                                if (cLElement instanceof CLObject) {
                                    override(parse, str4, (CLObject) cLElement);
                                }
                            }
                            coreMotionScene.setConstraintSetContent(str2, parse.toJSON());
                        }
                    }
                } else {
                    coreMotionScene.setConstraintSetContent(str2, object.toJSON());
                }
            }
        }
    }

    public static void parseCustomProperties(CLObject cLObject, ConstraintReference constraintReference, String str) throws CLParsingException {
        ArrayList<String> names;
        CLObject objectOrNull = cLObject.getObjectOrNull(str);
        if (objectOrNull != null && (names = objectOrNull.names()) != null) {
            int size = names.size();
            int i = 0;
            while (i < size) {
                String str2 = names.get(i);
                i++;
                String str3 = str2;
                CLElement cLElement = objectOrNull.get(str3);
                if (cLElement instanceof CLNumber) {
                    constraintReference.addCustomFloat(str3, cLElement.getFloat());
                } else if (cLElement instanceof CLString) {
                    long parseColorString = parseColorString(cLElement.content());
                    if (parseColorString != -1) {
                        constraintReference.addCustomColor(str3, (int) parseColorString);
                    }
                }
            }
        }
    }

    public static void parseDesignElementsJSON(String str, ArrayList<DesignElement> arrayList) throws CLParsingException {
        CLObject parse = CLParser.parse(str);
        ArrayList<String> names = parse.names();
        if (names != null && names.size() > 0) {
            String str2 = names.get(0);
            CLElement cLElement = parse.get(str2);
            str2.getClass();
            if (str2.equals("Design") && (cLElement instanceof CLObject)) {
                CLObject cLObject = (CLObject) cLElement;
                ArrayList<String> names2 = cLObject.names();
                for (int i = 0; i < names2.size(); i++) {
                    String str3 = names2.get(i);
                    CLObject cLObject2 = (CLObject) cLObject.get(str3);
                    System.out.printf("element found " + str3 + "", new Object[0]);
                    String stringOrNull = cLObject2.getStringOrNull("type");
                    if (stringOrNull != null) {
                        HashMap hashMap = new HashMap();
                        int size = cLObject2.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            CLKey cLKey = (CLKey) cLObject2.get(i);
                            String content = cLKey.content();
                            String content2 = cLKey.getValue().content();
                            if (content2 != null) {
                                hashMap.put(content, content2);
                            }
                        }
                        arrayList.add(new DesignElement(str2, stringOrNull, hashMap));
                    }
                }
            }
        }
    }

    public static Dimension parseDimension(CLObject cLObject, String str, State state, CorePixelDp corePixelDp) throws CLParsingException {
        CLElement cLElement = cLObject.get(str);
        Dimension createFixed = Dimension.createFixed(0);
        if (cLElement instanceof CLString) {
            return parseDimensionMode(cLElement.content());
        }
        if (cLElement instanceof CLNumber) {
            return Dimension.createFixed(state.convertDimension(Float.valueOf(corePixelDp.toPixels(cLObject.getFloat(str)))));
        }
        if (cLElement instanceof CLObject) {
            CLObject cLObject2 = (CLObject) cLElement;
            String stringOrNull = cLObject2.getStringOrNull("value");
            if (stringOrNull != null) {
                createFixed = parseDimensionMode(stringOrNull);
            }
            CLElement orNull = cLObject2.getOrNull("min");
            if (orNull != null) {
                if (orNull instanceof CLNumber) {
                    createFixed.min(state.convertDimension(Float.valueOf(corePixelDp.toPixels(((CLNumber) orNull).getFloat()))));
                } else if (orNull instanceof CLString) {
                    createFixed.min(Dimension.WRAP_DIMENSION);
                }
            }
            CLElement orNull2 = cLObject2.getOrNull(AppLovinMediationProvider.MAX);
            if (orNull2 != null) {
                if (orNull2 instanceof CLNumber) {
                    createFixed.max(state.convertDimension(Float.valueOf(corePixelDp.toPixels(((CLNumber) orNull2).getFloat()))));
                    return createFixed;
                } else if (orNull2 instanceof CLString) {
                    createFixed.max(Dimension.WRAP_DIMENSION);
                }
            }
        }
        return createFixed;
    }

    public static Dimension parseDimensionMode(String str) {
        Dimension createFixed = Dimension.createFixed(0);
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1460244870:
                if (str.equals("preferWrap")) {
                    c = 0;
                    break;
                }
                break;
            case -995424086:
                if (str.equals("parent")) {
                    c = 1;
                    break;
                }
                break;
            case -895684237:
                if (str.equals("spread")) {
                    c = 2;
                    break;
                }
                break;
            case 3657802:
                if (str.equals("wrap")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return Dimension.createSuggested(Dimension.WRAP_DIMENSION);
            case 1:
                return Dimension.createParent();
            case 2:
                return Dimension.createSuggested(Dimension.SPREAD_DIMENSION);
            case 3:
                return Dimension.createWrap();
            default:
                if (str.endsWith("%")) {
                    return Dimension.createPercent(0, Float.parseFloat(str.substring(0, str.indexOf(37))) / 100.0f).suggested(0);
                }
                if (str.contains(":")) {
                    return Dimension.createRatio(str).suggested(Dimension.SPREAD_DIMENSION);
                }
                return createFixed;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Can't wrap try/catch for region: R(11:127|(2:129|(10:131|(1:133)|134|135|(1:137)|138|(1:140)|71|72|73))|143|134|135|(0)|138|(0)|71|72|73) */
    /* JADX WARN: Can't wrap try/catch for region: R(12:56|(2:58|(11:60|(1:62)|63|64|(1:66)|67|(1:69)|70|71|72|73))|76|63|64|(0)|67|(0)|70|71|72|73) */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0239 A[Catch: NumberFormatException -> 0x024f, TryCatch #1 {NumberFormatException -> 0x024f, blocks: (B:110:0x022a, B:112:0x0239, B:113:0x0240, B:115:0x0248), top: B:216:0x022a }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0248 A[Catch: NumberFormatException -> 0x024f, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x024f, blocks: (B:110:0x022a, B:112:0x0239, B:113:0x0240, B:115:0x0248), top: B:216:0x022a }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03b8 A[Catch: NumberFormatException -> 0x0250, TryCatch #2 {NumberFormatException -> 0x0250, blocks: (B:178:0x03a9, B:180:0x03b8, B:181:0x03bf, B:183:0x03c7), top: B:218:0x03a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03c7 A[Catch: NumberFormatException -> 0x0250, TRY_LEAVE, TryCatch #2 {NumberFormatException -> 0x0250, blocks: (B:178:0x03a9, B:180:0x03b8, B:181:0x03bf, B:183:0x03c7), top: B:218:0x03a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x041f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void parseFlowType(java.lang.String r19, androidx.constraintlayout.core.state.State r20, java.lang.String r21, androidx.constraintlayout.core.state.ConstraintSetParser.LayoutVariables r22, androidx.constraintlayout.core.parser.CLObject r23) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instructions count: 1224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseFlowType(java.lang.String, androidx.constraintlayout.core.state.State, java.lang.String, androidx.constraintlayout.core.state.ConstraintSetParser$LayoutVariables, androidx.constraintlayout.core.parser.CLObject):void");
    }

    public static void parseGenerate(State state, LayoutVariables layoutVariables, CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        if (names != null) {
            int size = names.size();
            int i = 0;
            while (i < size) {
                String str = names.get(i);
                i++;
                String str2 = str;
                CLElement cLElement = cLObject.get(str2);
                ArrayList<String> list = layoutVariables.getList(str2);
                if (list != null && (cLElement instanceof CLObject)) {
                    int size2 = list.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        String str3 = list.get(i2);
                        i2++;
                        parseWidget(state, layoutVariables, str3, (CLObject) cLElement);
                    }
                }
            }
        }
    }

    private static void parseGridType(String str, State state, String str2, LayoutVariables layoutVariables, CLObject cLObject) throws CLParsingException {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        CLElement cLElement;
        int i2 = 1;
        GridReference grid = state.getGrid(str2, str);
        ArrayList<String> names = cLObject.names();
        int size = names.size();
        int i3 = 0;
        while (i3 < size) {
            int i4 = i3 + 1;
            String str3 = names.get(i3);
            str3.getClass();
            int i5 = -1;
            switch (str3.hashCode()) {
                case -1439500848:
                    if (str3.equals("orientation")) {
                        i5 = 0;
                        break;
                    }
                    break;
                case -806339567:
                    if (str3.equals("padding")) {
                        i5 = i2;
                        break;
                    }
                    break;
                case -567445985:
                    if (str3.equals("contains")) {
                        i5 = 2;
                        break;
                    }
                    break;
                case 3169614:
                    if (str3.equals("hGap")) {
                        i5 = 3;
                        break;
                    }
                    break;
                case 3506649:
                    if (str3.equals("rows")) {
                        i5 = 4;
                        break;
                    }
                    break;
                case 3586688:
                    if (str3.equals("vGap")) {
                        i5 = 5;
                        break;
                    }
                    break;
                case 97513095:
                    if (str3.equals("flags")) {
                        i5 = 6;
                        break;
                    }
                    break;
                case 109497044:
                    if (str3.equals("skips")) {
                        i5 = 7;
                        break;
                    }
                    break;
                case 109638249:
                    if (str3.equals("spans")) {
                        i5 = 8;
                        break;
                    }
                    break;
                case 144441793:
                    if (str3.equals("rowWeights")) {
                        i5 = 9;
                        break;
                    }
                    break;
                case 949721053:
                    if (str3.equals("columns")) {
                        i5 = 10;
                        break;
                    }
                    break;
                case 2033353925:
                    if (str3.equals("columnWeights")) {
                        i5 = 11;
                        break;
                    }
                    break;
            }
            switch (i5) {
                case 0:
                    grid.setOrientation(cLObject.get(str3).getInt());
                    break;
                case 1:
                    CLElement cLElement2 = cLObject.get(str3);
                    if (cLElement2 instanceof CLArray) {
                        CLArray cLArray = (CLArray) cLElement2;
                        if (cLArray.size() > i2) {
                            f = cLArray.getInt(0);
                            f4 = cLArray.getInt(i2);
                            if (cLArray.size() > 2) {
                                f3 = cLArray.getInt(2);
                                try {
                                    f2 = ((CLArray) cLElement2).getInt(3);
                                } catch (ArrayIndexOutOfBoundsException unused) {
                                    f2 = 0.0f;
                                }
                            } else {
                                f3 = f;
                                f2 = f4;
                            }
                            grid.setPaddingStart(Math.round(toPix(state, f)));
                            grid.setPaddingTop(Math.round(toPix(state, f4)));
                            grid.setPaddingEnd(Math.round(toPix(state, f3)));
                            grid.setPaddingBottom(Math.round(toPix(state, f2)));
                            break;
                        }
                    }
                    f = cLElement2.getInt();
                    f2 = f;
                    f3 = f2;
                    f4 = f3;
                    grid.setPaddingStart(Math.round(toPix(state, f)));
                    grid.setPaddingTop(Math.round(toPix(state, f4)));
                    grid.setPaddingEnd(Math.round(toPix(state, f3)));
                    grid.setPaddingBottom(Math.round(toPix(state, f2)));
                case 2:
                    CLArray arrayOrNull = cLObject.getArrayOrNull(str3);
                    if (arrayOrNull != null) {
                        for (int i6 = 0; i6 < arrayOrNull.size(); i6 += i2) {
                            Object[] objArr = new Object[i2];
                            objArr[0] = state.constraints(arrayOrNull.get(i6).content());
                            grid.add(objArr);
                        }
                        break;
                    } else {
                        break;
                    }
                case 3:
                    grid.setHorizontalGaps(toPix(state, cLObject.get(str3).getFloat()));
                    break;
                case 4:
                    int i7 = cLObject.get(str3).getInt();
                    if (i7 > 0) {
                        grid.setRowsSet(i7);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    grid.setVerticalGaps(toPix(state, cLObject.get(str3).getFloat()));
                    break;
                case 6:
                    String str4 = "";
                    try {
                        cLElement = cLObject.get(str3);
                    } catch (Exception e) {
                        PrintStream printStream = System.err;
                        e.toString();
                        printStream.getClass();
                    }
                    if (cLElement instanceof CLNumber) {
                        i = cLElement.getInt();
                        if (str4 == null && !str4.isEmpty()) {
                            grid.setFlags(str4);
                            break;
                        } else {
                            grid.setFlags(i);
                            break;
                        }
                    } else {
                        str4 = cLElement.content();
                        i = 0;
                        if (str4 == null) {
                        }
                        grid.setFlags(i);
                    }
                case 7:
                    String content = cLObject.get(str3).content();
                    if (content != null && content.contains(":")) {
                        grid.setSkips(content);
                        break;
                    }
                    break;
                case 8:
                    String content2 = cLObject.get(str3).content();
                    if (content2 != null && content2.contains(":")) {
                        grid.setSpans(content2);
                        break;
                    }
                    break;
                case 9:
                    String content3 = cLObject.get(str3).content();
                    if (content3 != null && content3.contains(",")) {
                        grid.setRowWeights(content3);
                        break;
                    }
                    break;
                case 10:
                    int i8 = cLObject.get(str3).getInt();
                    if (i8 > 0) {
                        grid.setColumnsSet(i8);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    String content4 = cLObject.get(str3).content();
                    if (content4 != null && content4.contains(",")) {
                        grid.setColumnWeights(content4);
                        break;
                    }
                    break;
                default:
                    applyAttribute(state, layoutVariables, state.constraints(str2), cLObject, str3);
                    break;
            }
            i3 = i4;
            i2 = 1;
        }
    }

    public static void parseGuideline(int i, State state, CLArray cLArray) throws CLParsingException {
        CLObject cLObject;
        String stringOrNull;
        CLElement cLElement = cLArray.get(1);
        if (!(cLElement instanceof CLObject) || (stringOrNull = (cLObject = (CLObject) cLElement).getStringOrNull("id")) == null) {
            return;
        }
        parseGuidelineParams(i, state, stringOrNull, cLObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void parseGuidelineParams(int i, State state, String str, CLObject cLObject) throws CLParsingException {
        boolean z;
        String str2;
        char c;
        char c2;
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        ConstraintReference constraints = state.constraints(str);
        if (i == 0) {
            state.horizontalGuideline(str);
        } else {
            state.verticalGuideline(str);
        }
        if (state.isRtl() && i != 0) {
            z = false;
        } else {
            z = true;
        }
        GuidelineReference guidelineReference = (GuidelineReference) constraints.getFacade();
        int size = names.size();
        float f = 0.0f;
        int i2 = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = true;
            while (i2 < size) {
                String str3 = names.get(i2);
                i2++;
                str2 = str3;
                str2.getClass();
                switch (str2.hashCode()) {
                    case -678927291:
                        if (str2.equals("percent")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case 100571:
                        if (str2.equals("end")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 3317767:
                        if (str2.equals("left")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 108511772:
                        if (str2.equals("right")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 109757538:
                        if (str2.equals("start")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        CLArray arrayOrNull = cLObject.getArrayOrNull(str2);
                        if (arrayOrNull == null) {
                            f = cLObject.getFloat(str2);
                        } else {
                            if (arrayOrNull.size() > 1) {
                                String string = arrayOrNull.getString(0);
                                float f2 = arrayOrNull.getFloat(1);
                                string.getClass();
                                switch (string.hashCode()) {
                                    case 100571:
                                        if (string.equals("end")) {
                                            c2 = 0;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 3317767:
                                        if (string.equals("left")) {
                                            c2 = 1;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 108511772:
                                        if (string.equals("right")) {
                                            c2 = 2;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 109757538:
                                        if (string.equals("start")) {
                                            c2 = 3;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    default:
                                        c2 = 65535;
                                        break;
                                }
                                switch (c2) {
                                    case 0:
                                        z3 = !z;
                                        f = f2;
                                        break;
                                    case 1:
                                        f = f2;
                                        break;
                                    case 2:
                                        f = f2;
                                        z3 = false;
                                        break;
                                    case 3:
                                        f = f2;
                                        z2 = true;
                                        z3 = z;
                                    default:
                                        f = f2;
                                        break;
                                }
                            }
                            z2 = true;
                        }
                        z2 = true;
                        z3 = true;
                    case 1:
                        z3 = !z;
                        f = toPix(state, cLObject.getFloat(str2));
                    case 3:
                        f = toPix(state, cLObject.getFloat(str2));
                        z3 = false;
                    case 4:
                        f = toPix(state, cLObject.getFloat(str2));
                        z3 = z;
                }
            }
            if (z2) {
                if (z3) {
                    guidelineReference.percent(f);
                    return;
                } else {
                    guidelineReference.percent(1.0f - f);
                    return;
                }
            } else if (z3) {
                guidelineReference.start(Float.valueOf(f));
                return;
            } else {
                guidelineReference.end(Float.valueOf(f));
                return;
            }
            f = toPix(state, cLObject.getFloat(str2));
        }
    }

    public static void parseHeader(CoreMotionScene coreMotionScene, CLObject cLObject) {
        String stringOrNull = cLObject.getStringOrNull("export");
        if (stringOrNull != null) {
            coreMotionScene.setDebugName(stringOrNull);
        }
    }

    public static void parseHelpers(State state, LayoutVariables layoutVariables, CLArray cLArray) throws CLParsingException {
        for (int i = 0; i < cLArray.size(); i++) {
            CLElement cLElement = cLArray.get(i);
            if (cLElement instanceof CLArray) {
                CLArray cLArray2 = (CLArray) cLElement;
                if (cLArray2.size() > 1) {
                    String string = cLArray2.getString(0);
                    string.getClass();
                    char c = 65535;
                    switch (string.hashCode()) {
                        case -1785507558:
                            if (string.equals("vGuideline")) {
                                c = 0;
                                break;
                            }
                            break;
                        case -1252464839:
                            if (string.equals("hChain")) {
                                c = 1;
                                break;
                            }
                            break;
                        case -851656725:
                            if (string.equals("vChain")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 965681512:
                            if (string.equals("hGuideline")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            parseGuideline(1, state, cLArray2);
                            continue;
                        case 1:
                            parseChain(0, state, layoutVariables, cLArray2);
                            continue;
                        case 2:
                            parseChain(1, state, layoutVariables, cLArray2);
                            continue;
                        case 3:
                            parseGuideline(0, state, cLArray2);
                            continue;
                    }
                }
            }
        }
    }

    public static void parseJSON(String str, Transition transition, int i) {
        CLObject objectOrNull;
        try {
            CLObject parse = CLParser.parse(str);
            ArrayList<String> names = parse.names();
            if (names == null) {
                return;
            }
            int size = names.size();
            int i2 = 0;
            while (i2 < size) {
                String str2 = names.get(i2);
                i2++;
                String str3 = str2;
                CLElement cLElement = parse.get(str3);
                if ((cLElement instanceof CLObject) && (objectOrNull = ((CLObject) cLElement).getObjectOrNull("custom")) != null) {
                    ArrayList<String> names2 = objectOrNull.names();
                    int size2 = names2.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        String str4 = names2.get(i3);
                        i3++;
                        String str5 = str4;
                        CLElement cLElement2 = objectOrNull.get(str5);
                        if (cLElement2 instanceof CLNumber) {
                            transition.addCustomFloat(i, str3, str5, cLElement2.getFloat());
                        } else if (cLElement2 instanceof CLString) {
                            long parseColorString = parseColorString(cLElement2.content());
                            if (parseColorString != -1) {
                                transition.addCustomColor(i, str3, str5, (int) parseColorString);
                            }
                        }
                    }
                }
            }
        } catch (CLParsingException e) {
            PrintStream printStream = System.err;
            e.toString();
            printStream.getClass();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void parseMotionProperties(CLElement cLElement, ConstraintReference constraintReference) throws CLParsingException {
        char c;
        if (cLElement instanceof CLObject) {
            CLObject cLObject = (CLObject) cLElement;
            TypedBundle typedBundle = new TypedBundle();
            ArrayList<String> names = cLObject.names();
            if (names == null) {
                return;
            }
            int size = names.size();
            int i = 0;
            while (i < size) {
                String str = names.get(i);
                i++;
                String str2 = str;
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1897525331:
                        if (str2.equals("stagger")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1310311125:
                        if (str2.equals("easing")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1285003983:
                        if (str2.equals("quantize")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case -791482387:
                        if (str2.equals("pathArc")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case -236944793:
                        if (str2.equals("relativeTo")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        typedBundle.add(600, cLObject.getFloat(str2));
                        break;
                    case 1:
                        typedBundle.add(TypedValues.MotionType.TYPE_EASING, cLObject.getString(str2));
                        break;
                    case 2:
                        CLElement cLElement2 = cLObject.get(str2);
                        if (cLElement2 instanceof CLArray) {
                            CLArray cLArray = (CLArray) cLElement2;
                            int size2 = cLArray.size();
                            if (size2 <= 0) {
                                break;
                            } else {
                                typedBundle.add(TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, cLArray.getInt(0));
                                if (size2 <= 1) {
                                    break;
                                } else {
                                    typedBundle.add(TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE, cLArray.getString(1));
                                    if (size2 <= 2) {
                                        break;
                                    } else {
                                        typedBundle.add(TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, cLArray.getFloat(2));
                                        break;
                                    }
                                }
                            }
                        } else {
                            typedBundle.add(TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, cLObject.getInt(str2));
                            break;
                        }
                    case 3:
                        int indexOf = indexOf(cLObject.getString(str2), "none", "startVertical", "startHorizontal", "flip", "below", "above");
                        if (indexOf == -1) {
                            PrintStream printStream = System.err;
                            cLObject.getLine();
                            printStream.getClass();
                            break;
                        } else {
                            typedBundle.add(TypedValues.MotionType.TYPE_PATHMOTION_ARC, indexOf);
                            break;
                        }
                    case 4:
                        typedBundle.add(TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, cLObject.getString(str2));
                        break;
                }
            }
            constraintReference.mMotionProperties = typedBundle;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x006a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parseMotionSceneJSON(androidx.constraintlayout.core.state.CoreMotionScene r10, java.lang.String r11) {
        /*
            androidx.constraintlayout.core.parser.CLObject r11 = androidx.constraintlayout.core.parser.CLParser.parse(r11)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            java.util.ArrayList r0 = r11.names()     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            if (r0 != 0) goto Lc
            goto L77
        Lc:
            int r1 = r0.size()     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            r2 = 0
            r3 = r2
        L12:
            if (r3 >= r1) goto L77
            java.lang.Object r4 = r0.get(r3)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            int r3 = r3 + 1
            java.lang.String r4 = (java.lang.String) r4     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            androidx.constraintlayout.core.parser.CLElement r5 = r11.get(r4)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            boolean r6 = r5 instanceof androidx.constraintlayout.core.parser.CLObject     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            if (r6 == 0) goto L12
            androidx.constraintlayout.core.parser.CLObject r5 = (androidx.constraintlayout.core.parser.CLObject) r5     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            int r6 = r4.hashCode()     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            r7 = -2137403731(0xffffffff8099cead, float:-1.4124972E-38)
            r8 = 2
            r9 = 1
            if (r6 == r7) goto L50
            r7 = -241441378(0xfffffffff19be59e, float:-1.5439285E30)
            if (r6 == r7) goto L46
            r7 = 1101852654(0x41acefee, float:21.617153)
            if (r6 == r7) goto L3c
            goto L5a
        L3c:
            java.lang.String r6 = "ConstraintSets"
            boolean r4 = r4.equals(r6)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            if (r4 == 0) goto L5a
            r4 = r2
            goto L5b
        L46:
            java.lang.String r6 = "Transitions"
            boolean r4 = r4.equals(r6)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            if (r4 == 0) goto L5a
            r4 = r9
            goto L5b
        L50:
            java.lang.String r6 = "Header"
            boolean r4 = r4.equals(r6)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            if (r4 == 0) goto L5a
            r4 = r8
            goto L5b
        L5a:
            r4 = -1
        L5b:
            if (r4 == 0) goto L6a
            if (r4 == r9) goto L66
            if (r4 == r8) goto L62
            goto L12
        L62:
            parseHeader(r10, r5)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            goto L12
        L66:
            parseTransitions(r10, r5)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            goto L12
        L6a:
            parseConstraintSets(r10, r5)     // Catch: androidx.constraintlayout.core.parser.CLParsingException -> L6e
            goto L12
        L6e:
            r10 = move-exception
            java.io.PrintStream r11 = java.lang.System.err
            r10.toString()
            r11.getClass()
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.ConstraintSetParser.parseMotionSceneJSON(androidx.constraintlayout.core.state.CoreMotionScene, java.lang.String):void");
    }

    public static void parseTransitions(CoreMotionScene coreMotionScene, CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        if (names != null) {
            int size = names.size();
            int i = 0;
            while (i < size) {
                String str = names.get(i);
                i++;
                String str2 = str;
                coreMotionScene.setTransitionContent(str2, cLObject.getObject(str2).toJSON());
            }
        }
    }

    private static void parseVariables(State state, LayoutVariables layoutVariables, CLObject cLObject) throws CLParsingException {
        ArrayList<String> names = cLObject.names();
        if (names != null) {
            int size = names.size();
            int i = 0;
            while (i < size) {
                String str = names.get(i);
                i++;
                String str2 = str;
                CLElement cLElement = cLObject.get(str2);
                if (cLElement instanceof CLNumber) {
                    layoutVariables.put(str2, cLElement.getInt());
                } else if (cLElement instanceof CLObject) {
                    CLObject cLObject2 = (CLObject) cLElement;
                    if (cLObject2.has("from") && cLObject2.has(TypedValues.TransitionType.S_TO)) {
                        layoutVariables.put(str2, layoutVariables.get(cLObject2.get("from")), layoutVariables.get(cLObject2.get(TypedValues.TransitionType.S_TO)), 1.0f, cLObject2.getStringOrNull("prefix"), cLObject2.getStringOrNull("postfix"));
                    } else if (cLObject2.has("from") && cLObject2.has("step")) {
                        layoutVariables.put(str2, layoutVariables.get(cLObject2.get("from")), layoutVariables.get(cLObject2.get("step")));
                    } else if (cLObject2.has("ids")) {
                        CLArray array = cLObject2.getArray("ids");
                        ArrayList<String> arrayList = new ArrayList<>();
                        for (int i2 = 0; i2 < array.size(); i2++) {
                            arrayList.add(array.getString(i2));
                        }
                        layoutVariables.put(str2, arrayList);
                    } else if (cLObject2.has("tag")) {
                        layoutVariables.put(str2, state.getIdsForTag(cLObject2.getString("tag")));
                    }
                }
            }
        }
    }

    public static void parseWidget(State state, LayoutVariables layoutVariables, String str, CLObject cLObject) throws CLParsingException {
        parseWidget(state, layoutVariables, state.constraints(str), cLObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static void populateState(@NonNull CLObject cLObject, @NonNull State state, @NonNull LayoutVariables layoutVariables) throws CLParsingException {
        boolean z;
        char c;
        ArrayList<String> names = cLObject.names();
        if (names != null) {
            int size = names.size();
            int i = 0;
            while (i < size) {
                String str = names.get(i);
                i++;
                String str2 = str;
                CLElement cLElement = cLObject.get(str2);
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1824489883:
                        if (str2.equals("Helpers")) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case 1875016085:
                        if (str2.equals("Generate")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1921490263:
                        if (str2.equals("Variables")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                switch (z) {
                    case false:
                        if (!(cLElement instanceof CLArray)) {
                            break;
                        } else {
                            parseHelpers(state, layoutVariables, (CLArray) cLElement);
                            break;
                        }
                    case true:
                        if (!(cLElement instanceof CLObject)) {
                            break;
                        } else {
                            parseGenerate(state, layoutVariables, (CLObject) cLElement);
                            break;
                        }
                    case true:
                        if (!(cLElement instanceof CLObject)) {
                            break;
                        } else {
                            parseVariables(state, layoutVariables, (CLObject) cLElement);
                            break;
                        }
                    default:
                        if (cLElement instanceof CLObject) {
                            CLObject cLObject2 = (CLObject) cLElement;
                            String lookForType = lookForType(cLObject2);
                            if (lookForType != null) {
                                switch (lookForType.hashCode()) {
                                    case -1785507558:
                                        if (lookForType.equals("vGuideline")) {
                                            c = 0;
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case -1354837162:
                                        if (lookForType.equals("column")) {
                                            c = 1;
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case -1252464839:
                                        if (lookForType.equals("hChain")) {
                                            c = 2;
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case -851656725:
                                        if (lookForType.equals("vChain")) {
                                            c = 3;
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case -333143113:
                                        if (lookForType.equals("barrier")) {
                                            c = 4;
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case 113114:
                                        if (lookForType.equals("row")) {
                                            c = 5;
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case 3181382:
                                        if (lookForType.equals("grid")) {
                                            c = 6;
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case 98238902:
                                        if (lookForType.equals("hFlow")) {
                                            c = 7;
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case 111168196:
                                        if (lookForType.equals("vFlow")) {
                                            c = '\b';
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    case 965681512:
                                        if (lookForType.equals("hGuideline")) {
                                            c = '\t';
                                            break;
                                        }
                                        c = 65535;
                                        break;
                                    default:
                                        c = 65535;
                                        break;
                                }
                                switch (c) {
                                    case 0:
                                        parseGuidelineParams(1, state, str2, cLObject2);
                                        continue;
                                    case 1:
                                    case 5:
                                    case 6:
                                        parseGridType(lookForType, state, str2, layoutVariables, cLObject2);
                                        continue;
                                    case 2:
                                    case 3:
                                        parseChainType(lookForType, state, str2, layoutVariables, cLObject2);
                                        continue;
                                    case 4:
                                        parseBarrier(state, str2, cLObject2);
                                        continue;
                                    case 7:
                                    case '\b':
                                        parseFlowType(lookForType, state, str2, layoutVariables, cLObject2);
                                        continue;
                                    case '\t':
                                        parseGuidelineParams(0, state, str2, cLObject2);
                                        continue;
                                }
                            } else {
                                parseWidget(state, layoutVariables, str2, cLObject2);
                                break;
                            }
                        } else if (!(cLElement instanceof CLNumber)) {
                            break;
                        } else {
                            layoutVariables.put(str2, cLElement.getInt());
                            break;
                        }
                }
            }
        }
    }

    private static float toPix(State state, float f) {
        return state.getDpToPixel().toPixels(f);
    }

    public static void parseWidget(State state, LayoutVariables layoutVariables, ConstraintReference constraintReference, CLObject cLObject) throws CLParsingException {
        if (constraintReference.getWidth() == null) {
            constraintReference.setWidth(Dimension.createWrap());
        }
        if (constraintReference.getHeight() == null) {
            constraintReference.setHeight(Dimension.createWrap());
        }
        ArrayList<String> names = cLObject.names();
        if (names == null) {
            return;
        }
        int size = names.size();
        int i = 0;
        while (i < size) {
            String str = names.get(i);
            i++;
            applyAttribute(state, layoutVariables, constraintReference, cLObject, str);
        }
    }

    public static void parseJSON(String str, State state, LayoutVariables layoutVariables) throws CLParsingException {
        try {
            populateState(CLParser.parse(str), state, layoutVariables);
        } catch (CLParsingException e) {
            PrintStream printStream = System.err;
            e.toString();
            printStream.getClass();
        }
    }
}
