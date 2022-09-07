package com.project.app;

import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.project.dto.MemberDTO;

public class MemberExcel {

	public void memberExcelCreator(List<MemberDTO> list){
		// .xls 확장자 지원
		HSSFWorkbook wb = null;
		HSSFSheet sheet = null;
		Row row = null;
		Cell cell = null;

		// .xlsx 확장자 지원
		XSSFWorkbook xssfWb = null; // .xlsx
		XSSFSheet xssfSheet = null; // .xlsx
		XSSFRow xssfRow = null; // .xlsx
		XSSFCell xssfCell = null;// .xlsx

		try {
			int rowNo = 0; // 행 갯수
			// 워크북 생성
			xssfWb = new XSSFWorkbook();
			xssfSheet = xssfWb.createSheet("회원 관리 목록"); // 워크시트 이름

			CellStyle cellStyle_Body = xssfWb.createCellStyle();
			cellStyle_Body.setAlignment(HorizontalAlignment.LEFT);

			// 테이블 스타일 설정
			CellStyle cellStyle_Table_Center = xssfWb.createCellStyle();
			cellStyle_Table_Center.setAlignment(HorizontalAlignment.CENTER);

			xssfRow = xssfSheet.createRow(rowNo++);
			xssfCell = xssfRow.createCell((short) 0);
			xssfCell.setCellStyle(cellStyle_Table_Center);
			xssfCell.setCellValue("회원 아이디");
			xssfCell = xssfRow.createCell((short) 1);
			xssfCell.setCellStyle(cellStyle_Table_Center);
			xssfCell.setCellValue("이름");
			xssfCell = xssfRow.createCell((short) 2);
			xssfCell.setCellStyle(cellStyle_Table_Center);
			xssfCell.setCellValue("주소");
			xssfCell = xssfRow.createCell((short) 3);
			xssfCell.setCellStyle(cellStyle_Table_Center);
			xssfCell.setCellValue("생년월일");
			xssfCell = xssfRow.createCell((short) 4);
			xssfCell.setCellStyle(cellStyle_Table_Center);
			xssfCell.setCellValue("전화번호");
			xssfCell = xssfRow.createCell((short) 5);
			xssfCell.setCellStyle(cellStyle_Table_Center);
			xssfCell.setCellValue("탈퇴여부");
			xssfCell = xssfRow.createCell((short) 6);
			xssfCell.setCellStyle(cellStyle_Table_Center);
			xssfCell.setCellValue("성별");

			for(MemberDTO dto : list) {
				xssfRow = xssfSheet.createRow(rowNo++);
				xssfCell = xssfRow.createCell((short) 0);
				xssfCell.setCellStyle(cellStyle_Table_Center);
				xssfCell.setCellValue(dto.getMemberId());
				xssfCell = xssfRow.createCell((short) 1);
				xssfCell.setCellStyle(cellStyle_Table_Center);
				xssfCell.setCellValue(dto.getMemberName());
				xssfCell = xssfRow.createCell((short) 2);
				xssfCell.setCellStyle(cellStyle_Table_Center);
				xssfCell.setCellValue(dto.getAddress());
				xssfCell = xssfRow.createCell((short) 3);
				xssfCell.setCellStyle(cellStyle_Table_Center);
				xssfCell.setCellValue(dto.getBirthDate());
				xssfCell = xssfRow.createCell((short) 4);
				xssfCell.setCellStyle(cellStyle_Table_Center);
				xssfCell.setCellValue(dto.getMemberTelNo());
				xssfCell = xssfRow.createCell((short) 5);
				xssfCell.setCellStyle(cellStyle_Table_Center);
				xssfCell.setCellValue(dto.getWithdraw());
				xssfCell = xssfRow.createCell((short) 6);
				xssfCell.setCellStyle(cellStyle_Table_Center);
				xssfCell.setCellValue(dto.getGender());
			}
			
			String root = "C:\\fileUpload\\excel\\";
			
			File userRoot = new File(root);
			if (!userRoot.exists())
				userRoot.mkdirs();
			
			String localFile =  "테스트_엑셀" + ".xlsx";

			File file = new File(root + localFile);
			FileOutputStream fos = null;
			fos = new FileOutputStream(file);
			xssfWb.write(fos);
			
			
			if (xssfWb != null)
				xssfWb.close();
			if (fos != null)
				fos.close();

		} catch (Exception e) {

		} finally {

		}
	}

}
