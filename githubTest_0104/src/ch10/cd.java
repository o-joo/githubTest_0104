package ch10;

import java.util.Calendar;

public class cd {

	// �̸�, �ּ�, ��ȭ��ȣ �ڵ� ������
	static String k1[] = { "010", "02", "031", "032", "041", "051", "053", "063", "062", "044" };
	static String k2[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};

	static String k3[] = { "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
			"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "â", "��", "��",
			"��", "��", "��", "ȣ", "��", "��", "��", "��", "��", "��", "��", "ȯ", "��", "��", "ö", "��", "��", "��", "��", "��", "��",
			"��", "��", "��", "��" };

	static String k4[] = { "���", "����", "����", "��", "��" };
	static String firstname[] = { "��", "��", "��", "��", "��", "��", "Ȳ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
			"��", "��", "��", "��", "��", "��", "��", "��", "��", "��" };

	static String add1[] = { "�����", "���", "��õ������", "����", "���", "�泲", "����", "����", "�泲", "���", "�뱸������", "����������", "�λ걤����",
			"����", "��걤����", "������", "���ֽ�" };
	
	static String e1[] = {"a", "e", "i", "o", "u"};
	static String e2[] = {"b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};
	static String e3[] = {"a", "e", "i", "o", "u", "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"};
	static String e4[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
	static String e5[] = {"@naver.com", "@gamil.com", "@daum.net", "@kakao.com"};
	
	static String g1[] = {"m", "f"};
	
	static String h1[] = {"���ͳ�", "����", "����", "��ȭ", "�", "����", "��Ÿ"};
	
	static String j1[] = {"ȸ���", "����������", "����", "����", "�л�", "�Ϲ��ڿ���", "������", "�Ƿ���", "������", "������", "������", "������", "��������", "����,���,������", "��,��,����,������", "�ֺ�", "����", "��Ÿ"};
	
	static String img[] = {"https://github.com/g2project/main/blob/main/sights/images/p1.jpg?raw=true",
			"https://github.com/g2project/main/blob/main/sights/images/p2.jpg?raw=true",
			"https://github.com/g2project/main/blob/main/sights/images/p3.jpg?raw=true",
			"https://github.com/g2project/main/blob/main/sights/images/p4.jpg?raw=true",
			"https://github.com/g2project/main/blob/main/sights/images/p5.jpg?raw=true",
			"https://github.com/g2project/main/blob/main/sights/images/p6.jpg?raw=true",
			"https://github.com/g2project/main/blob/main/sights/images/p7.jpg?raw=true",
			"https://github.com/g2project/main/blob/main/sights/images/p8.jpg?raw=true",
			"https://github.com/g2project/main/blob/main/sights/images/p1.jpg?raw=true"};
	
	static String cmt[] = {"���� �� �ôµ� �ʹ� ���� ���̾����.",
			"���ֵ��� ���Ÿ� ���Ÿ��� ���� ������ ���ƿ�.",
			"�� ���� �ٳ�� ���ֵ�. ��ȸ�� �Ǹ� �� �ٽ� ������ ���� ���Դϴ�.",
			"�������� ��ó���� ���� ������ �ع������ �Ծ��µ� ���� �����ݴϴ�.",
			"��ó�� �Ѷ�� �ֽ��� �Ĵ� ���� �ִ��󱸿�. �� �ѹ� �Ծ����.",
			"��å�ϱ� ���� ����� ���� ��� �����ϰ� ���� ���� ����� �Ծ��. ������ ������ ���� ������ ���� ���� ��������.",
			"���� �ٴ� ǳ��� �ֻ������� �����ϴ� ��Ʈ�� 1�ð� ���� ��Ʈ�� Ÿ ���°͵� ���ƿ�.",
			"������ ������� ������ �ñ��Դϴ�. ����� ����� ī�Ḯ������ ������.",
			"�Ѷ�� ���̵尡 �ñ״�ó �޴��� ���� ī�� ���븣 ���, �� �ѹ� ��������.",
			"�ų� �� ���� �� ������ �����ϴ� ���� ��ǥ �ڿ���Ȱ������ �޾ָ� �ڿ���Ȱ������ ��õ�մϴ�.",
			"270�� �� �Ը��� ���� �ִ� ����� ��� ������ û�ʹ翡�� ���ֵ��� �Ѵ��� ������ ������.",
			"1�� ���� �پ��� ������ ������ ������ ��ȿ������ ������ ���ֵ��� ���� �ڿ�",
			"���ֵ� �ϸ� �쵵, ���� �� ���� �� �������� ����Դϴ�.",
			"�������� Ÿ�� Ǫ�� �ٴٸ� �������� 10���̸� �����ϴ� ���͵����� ���� Ʈ��ŷ�� ��ܿ�.",
			"���� ������� �Ǿ ����� �̷�� �ֽ��ϴ�. �� �Դٴ� ������ ����.",
			"���ֵ��� �ٴ� ���� ���ߺ��� �ھ� �ִ� ������ �����ϴ� ��̸� ������ �� ����.",
			"����θ��� �ö� ����� Ȯ Ʈ�� ǳ�濡 ��ź�� ���� �����ϴ�. ���ʰ��� ���� �ٶ����� ���ư��� �͵� �ű��ؿ�.",
			"�����ϸ� ����� �÷���. ���꿡 ��ġ�ϰ� �ֱ⿡ ���α� ������ ���� �鷯 ������.",
			"����� �÷��� �Ĵ翡 �ɾƼ� ū ������ ���� �� �Դ� ��Ұ� ���� ��������.",
			"���屼�� ���迡�� ���� �� ��ϵ����� ���� ��� ��� 12�� ������ ������ ���� �������� ���� �߿���.",
			"�Ѷ�꿡�� �������� ������ ���� �� ������ ��������. ���� �������.",
			"�������� �ٱ��� ��ġ�� �ع�õ�� ����� ��õ���� ������ ������ ������ �ѷ����� ���� �� ��õ�Դϴ�.",
			"���� �ް��� �������� �������. ���� ��õ������ �ٴٰ� �̾��� ����� �ؼ��� ���ÿ� ���� �־��.",
			"�̸��� ����� ������������ ������������ �������� 300m ���� ������ ���� ��ġ�� �־��.",
			"���ֵ��� Ư�깰�� ������ ���� �Ծ �� �ִ� �ñ⿡ ���ָ� �湮�� ������. ���� �����ϴ�.",
			"���ֵ��� �̴Ͻ����� �����Ͽ콺�� �ٳ�Ծ��. û�����̶�� ���� ���� �ǰ������󱸿�",
			"���ֵ����̿� �ٳ�Ծ��. ���迡�� �����ϰ� ���� ������ �������������� ����� ���� �ű��߾��.",
			"���ֵ� ���������� ȭ�������� ���� �״�� �� ������ ���������� ��ġ�� ũ��, ����� �Ƹ�����ϴ�.",
			"���ֵ����̼����� ��������. ������ �ڿ� �ӿ� ������ ������ ���� ������ ��ġ�� ���� �̼��� �Դϴ�.",
			"���� �ٶ��� ������ �ö� ������. ���� ���� ���Դϴ�.",
			"���� �������� ��ħ ǳ���� ���� ������. ���Ŀ� �ٶ��� ���� �Ұ� �ĵ��� ���ϰ� �ļ� �߿����",
			"�迵�� ������ �θ�ǿ� �ٳ�� ������. ���� ����ϰ� �����Ѱ� �����ϴ�."};
	
	/* static String rt[] = {"1", "2", "3", "4", "5"}; */
	static String rt[] = {"2", "3", "4", "5"};
	
	/*
	 * static String place[] = {"���������", "�Ѷ��", "õ���� ����", "���屼", "��������", "õ���� ����",
	 * "�쵵", "�Ѷ�� ��������", "��ұ�"};
	 */
	static String place[] = {"���������", "�쵵"};
	
	static String birt[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};	
	
	
	
	
	
	
	
	
	// ��� ����
		public static String getPlace() {
			
	
			String str = place[(int) (Math.random() * place.length)];
			
			return str;
		}
	
	
	// ���� ����
		public static String getJob() {
			

			String str = j1[(int) (Math.random() * j1.length)];
			
			return str;
		}
	
	// ��� ����
	public static String getHobby() {
		

		String str = h1[(int) (Math.random() * h1.length)];
		
		return str;
	}
	
	// �����ȣ ����
				public static String getZipcode() {
					

					String str = "";
					
					var lnt = 5;
					for(int i=0; i<lnt; i++) {
						str += e4[(int) (Math.random() * e4.length)];
					}
					
					return str;
				}
	
	// ��й�ȣ ����
			public static String getPass() {
				

				String str = e3[(int)(Math.random() * e3.length)];
				
				var lnt = (int)(Math.random()*5+1);
				for(int i=0; i<lnt; i++) {
					str += e4[(int) (Math.random() * e4.length)];
				}
				
				return str;
			}
	
	// ���� ����
		public static String getGender() {
			

			String str = g1[(int)(Math.random() * g1.length)];
			return str;
		}
	
	// ���̵� ����
	public static String getId() {
		

		String str = e3[(int)(Math.random() * e3.length)];
		
		int lnt = (int)(Math.random()*5 + 1);
		for(int i=0; i<lnt; i++) {
			str += e1[(int) (Math.random() * e1.length)];
		}
	
		lnt = (int)(Math.random()*5);
		for(int i=0; i<lnt; i++) {
			str += e4[(int) (Math.random() * e4.length)];
		}

		return str;
	}

	
	// �̸��� ����
		public static String getEmail() {
			

			String str = e3[(int)(Math.random() * e3.length)];
			
			int lnt = (int)(Math.random()*5);
			for(int i=0; i<lnt; i++) {
				str += e1[(int) (Math.random() * e1.length)];
			}
			
			lnt = (int)(Math.random()*5);
			for(int i=0; i<lnt; i++) {
				str += e2[(int) (Math.random() * e2.length)];
			}
			
			lnt = (int)(Math.random()*5);
			for(int i=0; i<lnt; i++) {
				str += e4[(int) (Math.random() * e4.length)];
			}
			
			lnt = (int)(Math.random()*5);
			for(int i=0; i<lnt; i++) {
				str += e1[(int) (Math.random() * e1.length)];
			}
			
			str += e5[(int) (Math.random() * e5.length)];

			return str;
		}
		
	// �̹��� ����
			public static String getImg() {
				String str = img[(int)(Math.random() * img.length)];
				return str;
			}
			
	// �ı� ����
			public static String getComment() {
				String str = cmt[(int)(Math.random() * cmt.length)];
				return str;
			}	
			
	// ���� ����
			public static String getRating() {
				String str = rt[(int)(Math.random() * rt.length)];
				return str;
			}				

	// �̸� ����
	public static String getName() {
		String str = firstname[(int) (Math.random() * firstname.length)];
		str += k3[(int) (Math.random() * firstname.length)];
		str += k3[(int) (Math.random() * firstname.length)];

		return str;
	}

	// �ּ� ����
	public static String getAddress() {
		String str = add1[(int) (Math.random() * add1.length)];

		if (str.length() < 3)
			str += " " + k3[(int) (Math.random() * k3.length)] + k3[(int) (Math.random() * k3.length)] + "�� ";
		else
			str += " ";
		str += k3[(int) (Math.random() * k3.length)] + k3[(int) (Math.random() * k3.length)] + "�� ";
		str += k3[(int) (Math.random() * k3.length)] + k3[(int) (Math.random() * k3.length)]
				+ k4[(int) (Math.random() * k4.length)] + " ";
		str += (int) (Math.random() * 100 + 1) + "-" + (int) (Math.random() * 100 + 1);

		return str;
	}

	// ��ȭ��ȣ ����
	public static String getPhone() {
		String str = k1[(int) (Math.random() * k1.length)];

		var lnt = 8;
		for(int i=0; i<lnt; i++) {
			str += k2[(int) (Math.random() * k2.length)];
		}
		
		return str;
	}

	// ��¥ ����
	public static String getDate() {
		return getDate(1980);
	}

	public static String getDate(int startYear) {
		Calendar calendar = Calendar.getInstance();
		int thisYear = calendar.get(Calendar.YEAR);
		int thisMonth = calendar.get(Calendar.MONTH);
		int thisDate = calendar.get(Calendar.DATE);
		
		System.out.println(thisYear);
		System.out.println(thisMonth);
		System.out.println(thisDate);
		
		
		int year = (int) (Math.random() * (thisYear - startYear) + startYear + 1);
		int month = (int) (Math.random() * 12) + 1;
		int date;
		String str = "";

		// ��
		switch (month) {
		case 2:
			date = (int) (Math.random() * 28) + 1;
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			date = (int) (Math.random() * 30) + 1;
			break;
		default:
			date = (int) (Math.random() * 31) + 1;
			break;
		}

		// ����� üũ
		if (year == thisYear && month > thisMonth) {
			month = thisMonth;
		}

		if (year == thisYear && month == thisMonth && date > thisDate) {
			date = thisDate;
		}

		if (month < 10)
			str += year + "0" + month;
		else
			str += year + "" + month;

		if (date < 10)
			str += "0" + date;
		else
			str += "" + date;

		return str;
	}
}


